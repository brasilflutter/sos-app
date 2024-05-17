import 'package:flutter/material.dart';

abstract class DialogController {
  showError(String message);
  showSuccess(String message);
  Future<bool?> showResetVisitDialog();
  Future<bool?> showRebootStreamingDialog();
  Future<bool?> showFavoritesInfoDialog({required Color reserveColor, required Color reservedColor, required Color lockedColor});
  Future<bool?> showClientCreated();
}

class DialogControllerImpl extends DialogController {
  final BuildContext context;

  DialogControllerImpl(this.context);

  @override
  showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message, style: const TextStyle(color: Colors.white)), backgroundColor: Colors.red));
  }

  @override
  showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message, style: const TextStyle(color: Colors.white)), backgroundColor: Colors.green));
  }

  @override
  Future<bool?> showResetVisitDialog() {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          title: const Text('Reset Visit'),
          content: const SingleChildScrollView(child: ListBody(children: <Widget>[Text('The room is currently busy.'), Text('Would you like to reset the current visit?')])),
          actions: <Widget>[
            TextButton(onPressed: () => Navigator.of(context).pop(false), style: TextButton.styleFrom(foregroundColor: Colors.white), child: const Text('Cancel')),
            TextButton(onPressed: () => Navigator.of(context).pop(true), style: TextButton.styleFrom(foregroundColor: Colors.red), child: const Text('Reset Visit')),
          ],
        );
      },
    );
  }

  @override
  Future<bool?> showRebootStreamingDialog() {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          title: const Text('Reboot Metaverse Server'),
          content: const SingleChildScrollView(child: ListBody(children: <Widget>[Text('Would you like to reboot the Metaverse Server?'), Text('(It will take a few minutes to complete.)')])),
          actions: <Widget>[
            TextButton(onPressed: () => Navigator.of(context).pop(false), style: TextButton.styleFrom(foregroundColor: Colors.white), child: const Text('Cancel')),
            TextButton(onPressed: () => Navigator.of(context).pop(true), style: TextButton.styleFrom(foregroundColor: Colors.red), child: const Text('Reboot Metaverse')),
          ],
        );
      },
    );
  }

  @override
  Future<bool?> showFavoritesInfoDialog({required Color reserveColor, required Color reservedColor, required Color lockedColor}) {
    Widget createButtonInfo(String buttonText, Color backgroundColor, String infoText) {
      return Row(
        children: [
          SizedBox(
            height: 40,
            width: 120,
            child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: backgroundColor, foregroundColor: Theme.of(context).primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))), child: Align(alignment: Alignment.center, child: Text(buttonText, style: const TextStyle(fontSize: 16, color: Colors.white)))),
          ),
          const SizedBox(width: 24),
          Text(infoText, style: const TextStyle(fontSize: 16, color: Colors.white)),
        ],
      );
    }

    return showDialog<bool?>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                const Align(alignment: Alignment.center, child: Text('Colors Info', style: TextStyle(color: Colors.white))),
                Align(alignment: Alignment.topRight, child: IconButton(icon: const Icon(Icons.close, color: Colors.white), onPressed: () => Navigator.of(context).pop())),
              ],
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, bottom: 30),
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  createButtonInfo("Reserve", const Color(0xFF41976A), "Available to be reserved"),
                  const SizedBox(height: 24),
                  createButtonInfo("Reserved", Colors.blue, "You reserved an Unit"),
                  const SizedBox(height: 24),
                  createButtonInfo("Locked", const Color(0xFFB03D44), "Already reserved by someone else"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Future<bool?> showClientCreated() {
    return showDialog<bool?>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          title: const Text('Success', style: TextStyle(color: Colors.white)),
          content: const Text('Client created successfully!!!', style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Start Experience',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        );
      },
    );
  }
}

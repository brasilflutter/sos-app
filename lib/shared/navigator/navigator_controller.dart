import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sos/views/info_pet/info_pet_view_factory.dart';

abstract class NavigatorController {
  List<DeviceOrientation> getPreferredOrientations({bool? forceLandscape, bool? forcePortrait});

  void pop({dynamic result});

  void popUntil(RoutePredicate predicate);

  Future<dynamic> navigateToAdminPage();

  Future<dynamic> navigateToInfoPet(String petId);
}

class NavigatorControllerImpl extends NavigatorController {
  final BuildContext context;

  NavigatorControllerImpl(this.context);

  @override
  List<DeviceOrientation> getPreferredOrientations({bool? forceLandscape, bool? forcePortrait}) {
    //if (forceLandscape == true) return [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft];
    //if (forcePortrait == true) return [DeviceOrientation.portraitUp];
    //if (isScreenMobile()) return [DeviceOrientation.portraitUp];
    //return [];
    return [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft];
  }

  void setScreenOrientation({bool? forceLandscape}) {
    if (forceLandscape == true) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    } else if (isScreenMobile()) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    } else {
      SystemChrome.setPreferredOrientations([]);
    }
  }

  bool isScreenMobile() => MediaQuery.of(context).size.width < 600;

  @override
  void pop({dynamic result}) => Navigator.pop(context, result);

  @override
  void popUntil(RoutePredicate predicate) => Navigator.popUntil(context, predicate);

  @override
  navigateToAdminPage() => Navigator.push(context, MaterialPageRoute(builder: (context) => Container()));

  @override
  Future navigateToInfoPet(String petId) {
    return Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleInfoPetViewFactory()));
  }
}

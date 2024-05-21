import 'package:framework_sos/framework_sos.dart';

class InfoPetSuccessState extends SuccessBaseState {
  final String text;

  late final VoidCallbackSuccessState<InfoPetSuccessState> _onClick;

  InfoPetSuccessState({
    required this.text,
    required VoidCallbackSuccessState<InfoPetSuccessState> onClick,
  }) {
    _onClick = onClick;
  }

  InfoPetSuccessState copyWith({
    String? text,
    VoidCallbackSuccessState<InfoPetSuccessState>? onClick,
  }) {
    return InfoPetSuccessState(
      text: text ?? this.text,
      onClick: onClick ?? _onClick,
    );
  }

  void onClick() => _onClick(this);
}

import 'package:framework_sos/framework_sos.dart';

class HomePetSuccessState extends SuccessBaseState {
  final String text;

  late final VoidCallbackSuccessState<HomePetSuccessState> _onClick;

  HomePetSuccessState({
    required this.text,
    required VoidCallbackSuccessState<HomePetSuccessState> onClick,
  }) {
    _onClick = onClick;
  }

  HomePetSuccessState copyWith({
    String? text,
    VoidCallbackSuccessState<HomePetSuccessState>? onClick,
  }) {
    return HomePetSuccessState(
      text: text ?? this.text,
      onClick: onClick ?? _onClick,
    );
  }

  void onClick() => _onClick(this);
}

import 'package:framework_sos/framework_sos.dart';

class HomeSuccessState extends SuccessBaseState {
  final String text;

  late final VoidCallbackSuccessState<HomeSuccessState> _onClick;

  HomeSuccessState({
    required this.text,
    required VoidCallbackSuccessState<HomeSuccessState> onClick,
  }) {
    _onClick = onClick;
  }

  HomeSuccessState copyWith({
    String? text,
    VoidCallbackSuccessState<HomeSuccessState>? onClick,
  }) {
    return HomeSuccessState(
      text: text ?? this.text,
      onClick: onClick ?? _onClick,
    );
  }

  void onClick() => _onClick(this);
}

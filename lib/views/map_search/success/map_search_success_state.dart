import 'package:framework_sos/reactive_state_manager/base_states/base_states.dart';

class MapSearchSuccessState extends SuccessBaseState {
  final String text;

  late final VoidCallbackSuccessState<MapSearchSuccessState> _onClick;

  MapSearchSuccessState({
    required this.text,
    required VoidCallbackSuccessState<MapSearchSuccessState> onClick,
  }) {
    _onClick = onClick;
  }

  MapSearchSuccessState copyWith({
    String? text,
    VoidCallbackSuccessState<MapSearchSuccessState>? onClick,
  }) {
    return MapSearchSuccessState(
      text: text ?? this.text,
      onClick: onClick ?? _onClick,
    );
  }

  void onClick() => _onClick(this);
}

import 'package:flutter/cupertino.dart';

class ObjectProvider extends ValueNotifier<Object?> {
  ObjectProvider() : super(null);

  Object? get getObject => value;
  void setObject(Object? value) => this.value = value;
  void resetObject() => value = null;
}

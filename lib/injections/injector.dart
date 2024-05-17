import 'package:flutter/cupertino.dart';
import 'package:framework_sos/framework_sos.dart';

class Injector {
  static void setupDependencies(BuildContext context) {
    BaseDependencies.instance.commit();
  }
}

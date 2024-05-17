import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'home_loading_state.dart';

class HomeLoadingView extends LoadingBaseView<HomeLoadingState> {
  const HomeLoadingView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return const CircularProgressIndicator();
  }
}

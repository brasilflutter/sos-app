import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'home_pet_loading_state.dart';

class HomePetLoadingView extends LoadingBaseView<HomePetLoadingState> {
  const HomePetLoadingView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    // TODO: implement buildView loading
    throw UnimplementedError('buildView loading is not implemented');
    // return CircularProgressIndicator();
  }
}

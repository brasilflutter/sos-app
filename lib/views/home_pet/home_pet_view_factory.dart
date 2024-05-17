import 'package:framework_sos/framework_sos.dart';

import 'home_pet_states.dart';
import 'home_pet_views.dart';

class HomePetViewFactory {
  static LoadingBaseView<HomePetLoadingState> loading(HomePetLoadingState state) => HomePetLoadingView(state: state);

  static SuccessBaseView<HomePetSuccessState> success(HomePetSuccessState state) => HomePetSuccessView(state: state);

  static ErrorBaseView<HomePetErrorState> error(HomePetErrorState state) => HomePetErrorView(state: state);
}


// class ExampleHomePetViewFactory extends StatelessWidget {
//   const ExampleHomePetViewFactory({super.key});

// This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         body: Center(
//             child: Column(
//           children: [
//             HomePetViewFactory.error(HomePetErrorState(message: 'Error message')),
//             HomePetViewFactory.loading(HomePetLoadingState()),
//             HomePetViewFactory.success(HomePetSuccessState(text: 'Success text', onClick: (state) {})),
//           ],
//         )),
//       ),
//     );
//   }
// }

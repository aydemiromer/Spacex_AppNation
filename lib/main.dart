import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/view-model/spacex_view_model.dart';
import 'package:spacex/view/spacex_view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SpaceX',
        home: AnimatedSplashScreen(
          duration: 1600,
          splash: Image.network(
              'https://image.cnbcfm.com/api/v1/image/106836975-1612791996353-gettyimages-1206289333-SATELLITE_2020.jpeg?v=1626178796'),
          nextScreen: MultiProvider(providers: [
            ChangeNotifierProvider<SpaceXListViewModel>(
                create: (_) => SpaceXListViewModel()),
          ], child: SpaceXView()),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black38,
        ));
  }
}

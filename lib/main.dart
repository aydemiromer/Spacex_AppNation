import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/view/spacex_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SpaceX',
        home: MultiProvider(providers: [
          // ChangeNotifierProvider(create: (_) => SpaceXViewModel()),
        ], child: SpaceXView()));
  }
}

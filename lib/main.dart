import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/view-model/spacex_view_model.dart';
import 'package:spacex/view/spacex_view.dart';

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
      home: MultiProvider(providers: [
        ChangeNotifierProvider<SpaceXListViewModel>(
            create: (_) => SpaceXListViewModel()),
      ], child: SpaceXView()),
    );
  }
}

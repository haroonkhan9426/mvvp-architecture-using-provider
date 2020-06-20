import 'package:base_flutter_project/ui/screens/counter_screen.dart';
import 'package:base_flutter_project/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/viewmodels/counter_viewmodel.dart';
import 'service_locator.dart';

void main() {
  setupServiceLocator();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterVM>(create: (_) => CounterVM()),
      ],
      child: MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}

import 'package:counter/data/data_source/counter.dart';
import 'package:counter/data/repository/double_counter_repository_impl.dart';
import 'package:counter/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<MainViewModel>(
        create: (_) => MainViewModel(DoubleCounterRepositoryImpl(Counter())),
        child: const MyHomePage(),
      ),
    );
  }
}

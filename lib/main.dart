import 'package:bloc_counter/counter_bloc_observer.dart';
import 'package:bloc_counter/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = const CounterBlocObserver();
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Counter App",
      home: CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

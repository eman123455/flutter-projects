import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const BasketballApp());
}

class BasketballApp extends StatelessWidget {
  const BasketballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const  MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}

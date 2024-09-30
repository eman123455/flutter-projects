import 'package:basketball_counter_app/cubit/counter_states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(super.initialState);

  int teamAIncrement = 0;
  int teamBIncrement = 0;

  void teamIncrement({required String teamName, required int buttonNumber}) {
    switch (teamName) {
      case 'A':
        teamAIncrement += buttonNumber;
        emit(CounterAIncrement());
        break;
      case 'B':
          teamBIncrement += buttonNumber;
        emit(CounterBIncrement());
        break;
    }
  }
}

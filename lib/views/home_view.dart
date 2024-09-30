import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int teamAIncrement = 0;

  int teamBIncrement = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {
        if (state is CounterAIncrement) {
          teamAIncrement =
              BlocProvider.of<CounterCubit>(context).teamAIncrement;
        } else if (state is CounterBIncrement) {
          teamBIncrement =
              BlocProvider.of<CounterCubit>(context).teamBIncrement;
        } else {
            teamBIncrement =
              BlocProvider.of<CounterCubit>(context).teamBIncrement;
          teamAIncrement =
              BlocProvider.of<CounterCubit>(context).teamAIncrement;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffFF9900),
            title: const Text(
              'Points Counter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Team A
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${teamAIncrement}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(teamName: 'A', buttonNumber: 1);
                          },
                          child: const Text("Add 1 point"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(teamName: 'A', buttonNumber: 2);
                          },
                          child: const Text("Add 2 point"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(teamName: 'A', buttonNumber: 3);
                          },
                          child: const Text("Add 3 point"),
                        ),
                      ],
                    ),
                    //vertical divider
                     SizedBox(
                      height: 400,
                       child: VerticalDivider(
                       color: Colors.grey.withOpacity(0.4),
                       thickness: 2,
                       
                                           ),
                     ),
                    // Team B
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${teamBIncrement}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // Rectangle shape
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(teamName: 'B', buttonNumber: 1);
                          },
                          child: const Text("Add 1 point"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(teamName: 'B', buttonNumber: 2);
                          },
                          child: const Text("Add 2 point"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(teamName: 'B', buttonNumber: 3);
                          },
                          child: const Text("Add 3 point"),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context)
                          .teamIncrement(teamName: 'R', buttonNumber: 3);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Reset',
                      style: TextStyle(),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}

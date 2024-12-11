// ignore_for_file: file_names

import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class Bascketball extends StatefulWidget {
//   const Bascketball({super.key});

//   @override
//   State<Bascketball> createState() => _BascketballState();
// }

// class _BascketballState extends State<Bascketball> {
class Bascketball extends StatelessWidget {
  Bascketball({super.key});

  int pointA = 0;
  int pointB = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, counterSTATE>(
      listener: (context, state) {
        if (state is counterASTATE) {
          pointA = BlocProvider.of<CounterCubit>(context).pointA;
        } else {
          pointB = BlocProvider.of<CounterCubit>(context).pointB;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Bascketball",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 42, color: Colors.black),
                      ),
                      Text(
                        // "$pointA",
                        '${BlocProvider.of<CounterCubit>(context).pointA}',

                        style:
                            const TextStyle(fontSize: 150, color: Colors.black),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            // setState(() {
                            //   pointA++;
                            // });
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'A', buttonNum: 1);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            // setState(() {
                            //   pointA += 2;
                            // });
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'A', buttonNum: 2);
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            // setState(() {
                            //   pointA += 3;
                            // });
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'A', buttonNum: 3);
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 460,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 42, color: Colors.black),
                      ),
                      Text(
                        // "$pointB",
                        '${BlocProvider.of<CounterCubit>(context).pointB}',

                        style:
                            const TextStyle(fontSize: 150, color: Colors.black),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            // setState(() {
                            //   pointB++;
                            // });
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'B', buttonNum: 1);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            // setState(() {
                            //   pointB += 2;
                            // });
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'B', buttonNum: 2);
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(140, 50)),
                          onPressed: () {
                            // setState(() {
                            //   pointB += 3;
                            // });
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'B', buttonNum: 3);
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ],
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(140, 50)),
                  onPressed: () {
                    // setState(() {
                    //   pointA = 0;
                    //   pointB = 0;
                    // });
                    
                  },
                  child: const Text(
                    "Rest",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        );
      },
    );
  }
}

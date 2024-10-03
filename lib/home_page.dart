import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/second_page.dart';
import 'package:statemangement_examples/utillitees.dart';


class MyCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, count) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Count: $count'),
                ElevatedButton(
                  onPressed: () => context.read<CounterCubit>().increment(),
                  child: Text('Increment'),
                ),
                const SizedBox(height: 30,),
                InkWell(
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                    width: 100,
                    child: Center(child: Text("next_page")),
                  ),
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
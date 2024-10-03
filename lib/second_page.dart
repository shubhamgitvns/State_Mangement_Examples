import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/utillitees.dart';



class SecondPage extends StatelessWidget {
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
                  onPressed: () => context.read<CounterCubit>().decrement(),
                  child: Text('Increment'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

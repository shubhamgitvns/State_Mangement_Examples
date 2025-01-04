import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/utillitees.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>(); // Watch for counter changes

    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Column(
        children: [
          Center(
            child: Text(
              "Counter Value: ${counter.count}",
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                context.read<Counter>().decrement();
              },
              child: Text("Decrement"))
        ],
      ),
    );
  }
}

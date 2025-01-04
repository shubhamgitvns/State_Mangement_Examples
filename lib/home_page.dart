import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/second_page.dart';
import 'package:statemangement_examples/utillitees.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the counter value
    final counter = context.watch<Counter>(); // watch for counter changes
    //** Watch<Counter>(): Watch for counter changes and rebuild the widget when the value is change **//

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Counter Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter Value:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "${counter.count}",
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: const Text("Click"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Increment the counter
          context.read<Counter>().increment();
          //** read<Counter>(): It Does not rebuild the widget, used for one-time reads. **//
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

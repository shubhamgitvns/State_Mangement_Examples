import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/utillitees.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({super.key});


  @override
  Widget build(BuildContext context) {
    //************initlize provider*********************
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Increment: ${counter.count}',
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counter.decrement,
              child: Text('Increment'),
            ),
            
          ],
        ),
      ),
    );
  }
}

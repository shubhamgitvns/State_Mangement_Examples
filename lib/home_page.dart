import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/second_page.dart';
import 'package:statemangement_examples/utillitees.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //************initlize provider*********************
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
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
              onPressed: counter.increment,
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
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

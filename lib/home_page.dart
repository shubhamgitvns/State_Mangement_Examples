import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/second_page.dart';
import 'package:statemangement_examples/utillitees.dart';


class MyCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Count: ${controller.count}')),
            ElevatedButton(
              onPressed: controller.increment,
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
  }
}
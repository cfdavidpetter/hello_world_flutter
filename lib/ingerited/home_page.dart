import 'package:flutter/material.dart';
import 'package:ola_mundo/ingerited/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Hello World';
    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home - $title'),
      ),
      body: Center(
        child: Text('$title, Click\'s: ${controller.value}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;
  final names = ['David', 'Mayara', 'Isa', 'Calos', 'Pedro', 'Maria', 'Silva'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            final name = names[index];
            return Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.only(top: 10.0),
              color: const Color.fromRGBO(108, 4, 113, 1),
              child: Center(
                child: Text(name),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Column(children: [
          const Icon(Icons.add),
          Text('$counter'),
        ]),
        // child: const Icon(Icons.add),
      ),
    );
  }
}

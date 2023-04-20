import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (controller.text != '') {
                      final text = controller.text;
                      setState(() {
                        list.add(text);
                        controller.clear();
                      });
                    }
                  },
                  icon: const Icon(Icons.add),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final item = list[index];
                return Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.only(top: 10.0),
                  color: const Color.fromARGB(255, 140, 136, 206),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(item),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            list.remove(item);
                          });
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

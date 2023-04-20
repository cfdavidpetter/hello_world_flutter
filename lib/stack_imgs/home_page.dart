import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/imgs/5073414.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.red.withOpacity(0.25),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: const Color.fromARGB(255, 119, 183, 34),
              height: 50,
              width: 50,
            ),
            Container(
              color: const Color.fromARGB(255, 215, 120, 31),
              height: 10,
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}

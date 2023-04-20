import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
            color: const Color.fromARGB(255, 112, 112, 112).withOpacity(0.25),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 200,
                  textColor: Colors.white,
                  style: FlutterLogoStyle.horizontal,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Go to App!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.white,
                    ),
                  ),
                  child: const Text('Entrar'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

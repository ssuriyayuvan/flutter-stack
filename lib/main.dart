import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pexel.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 200,
            left: 80,
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: const Border.symmetric(
                    horizontal: BorderSide(
                  width: 1,
                  color: Colors.white,
                )),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Text(
                    DateFormat("dd-MM-yyyy").format(DateTime.now()),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        // fontFamily: "Lato",
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    DateFormat("hh:mm:ss aa").format(DateTime.now()),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      // fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

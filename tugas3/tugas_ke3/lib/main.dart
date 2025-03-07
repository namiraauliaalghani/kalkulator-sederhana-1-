import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 227, 67, 165)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ayo'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(backgroundColor: Color.fromARGB(0, 163, 39, 39)),
          strutStyle: StrutStyle(fontFamily: "Roboto"),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          locale: Locale('id', 'ID'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
               'Selamat datang yaa :',
  style: TextStyle(
    fontSize: 24, 
    fontWeight: FontWeight.bold, 
    color: Color.fromARGB(255, 20, 21, 23),
    letterSpacing: 2.0, 
    backgroundColor: Color.fromARGB(255, 244, 35, 189), 
  ),
),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color.fromARGB(255, 7, 8, 8), 
                    fontSize: 40, 
                    fontWeight: FontWeight.bold, 
                  ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: const Icon(Icons.add),
      ),
    );
  }
}

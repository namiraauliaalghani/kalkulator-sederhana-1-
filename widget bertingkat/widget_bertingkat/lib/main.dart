import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewScreen(),
    );
  }
}

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  // Simulasi data menggunakan list
  final List<Map<String, String>> items = [
    {"title": "jilbab", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe6nFcK47B-pH0j8PAh5Qz0zJOENUOrH7Zmw&s"},
    {"title": "pahmina", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsaqBX9E2eLDPtRsLxPZoyC_7maBfPAVSAUA&s"},
    {"title": "segi4", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYPj3lrBhGB7XYUejdTusjyprb7t1XV9AZrg&s"},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Flutter"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(items[index]['image']!), // Gambar
            title: Text(items[index]['title']!), // Judul
            subtitle: const Text("Klik untuk melihat detail"), // Subtitle
            trailing: const Icon(Icons.arrow_forward), // Ikon
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Anda memilih ${items[index]['title']}")),
              );
            },
          );
        },
      ),
    );
  }
}
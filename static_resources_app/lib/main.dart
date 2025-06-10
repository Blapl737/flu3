import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static Resources Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'RobotoSlab'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Галерея изображений',
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Добро пожаловать в галерею!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Image.asset('assets/images/image1.png')),
                  const SizedBox(width: 10),
                  Expanded(child: Image.asset('assets/images/image2.png')),
                  const SizedBox(width: 10),
                  Expanded(child: Image.asset('assets/images/image3.png')),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Эта галерея использует пользовательский шрифт RobotoSlab для всего текста.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/responsive_naming_text_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Naming Text View'),
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.25),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              ResponsiveNamingTextView(name: 'Name1', value: 'Value1'),
              ResponsiveNamingTextView(name: 'Name2', value: 'Value2'),
              ResponsiveNamingTextView(name: 'Name3', value: 'Value3'),
              ResponsiveNamingTextView(name: 'Name4', value: 'Value4'),
              ResponsiveNamingTextView(name: 'Name5', value: 'Value5'),
            ],
          ),
        ),
      ),
    );
  }
}

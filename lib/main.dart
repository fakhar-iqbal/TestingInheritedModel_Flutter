import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}

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
        title: const Text('Hello World'),
      ),
    );
  }
}

enum AvailableColors { one, two }

class AvailableColorsWidget extends InheritedModel<AvailableColors> {
  final AvailableColors color1;
  final AvailableColors color2;

  const AvailableColorsWidget({
    super.key,
    required this.color1,
    required this.color2,
    required super.child,
  });

  static AvailableColorsWidget of(
      BuildContext context, AvailableColors aspect) {
    return InheritedModel.inheritFrom<AvailableColorsWidget>(
      context,
      aspect: aspect,
    )!;
  }
  
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    
    throw UnimplementedError();
  }
  
  @override
  bool updateShouldNotifyDependent(covariant InheritedModel<AvailableColors> oldWidget, Set<AvailableColors> dependencies) {
    
    throw UnimplementedError();
  }
}

final colors = [
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.cyan,
  Colors.brown,
  Colors.amber,
  Colors.deepPurple,
];

final color = colors.getRandomElement();

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(Random().nextInt(length));
}


// 16.11
import 'package:flutter/material.dart';
import 'pantallas/pantalla_principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lenguajes de Programación',
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: true,
      ),
      home: const PantallaPrincipal(),
      debugShowCheckedModeBanner: false,
    );
  }
}

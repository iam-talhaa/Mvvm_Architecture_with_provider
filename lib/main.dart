import 'package:flutter/material.dart';

void main() {
  runApp(Mvvm_Architecture_with_Provider());
}

class Mvvm_Architecture_with_Provider extends StatefulWidget {
  const Mvvm_Architecture_with_Provider({super.key});

  @override
  State<Mvvm_Architecture_with_Provider> createState() =>
      _Mvvm_Architecture_with_ProviderState();
}

class _Mvvm_Architecture_with_ProviderState
    extends State<Mvvm_Architecture_with_Provider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}

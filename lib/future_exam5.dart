import 'package:flutter/material.dart';

class _CounterAppState extends StatefulWidget {
  const _CounterAppState({Key? key}) : super(key: key);

  @override
  State<_CounterAppState> createState() => _CounterAppStateState();
}

class _CounterAppStateState extends State<_CounterAppState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
    );
  }
}

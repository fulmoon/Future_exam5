import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Exam5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var greatMan = ['이순신', '세종대왕', '광개토대왕', '다빈치', '피타고라스', '다윈', '에디슨', '아인슈타인', '링컨', '튜링', ];
  int index = 0;
  String pastMan = '';
  bool isLoading = false;
  var randomNumber = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '당신 전생은?',
            ),
            _buildText(),
            ElevatedButton(
                onPressed: () async {
                  pastMan = await exam5();
                },
                child: const Text('Future 연습5'),
            ),
          ]
        ),
      ),
    );
  }

  Future<String> exam5() async{
    setState(() {
      //index++;
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 3));

    setState((){
      index = randomNumber.nextInt(greatMan.length);
      isLoading = false;
    });

    String result = greatMan[index];
    return result;
  }

  Widget _buildText(){
    if (isLoading){
      return const CircularProgressIndicator();
    }
    return Text(
      pastMan,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var Greatman = ['이순신', '세종대왕', '광개토대왕', '다빈치', '피타고라스', '다윈', '에디슨', '아인슈타인', '링컨', '튜링', ];
  int index = 0;
  String pastman = '';

  String exam5() {
    setState(() {
      index++;
    });
    String result = Greatman[index];
    return result;
  }

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
            Text(
              '$pastman',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: (){
                  pastman = exam5();
                },
                child: const Text('Future 연습5'),
            )
          ]
        ),
      ),

    );
  }
}

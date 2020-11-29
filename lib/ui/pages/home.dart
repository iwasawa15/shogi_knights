import 'package:flutter/material.dart';
import 'package:shogi_knights/ui/pages/game.dart';
import 'package:shogi_knights/ui/widgets/button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void renderGamePage() {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return GamePage(title: '藤井聡太二冠');
    }));
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
            Button(
              onPressed: renderGamePage,
              color: Colors.blue[200],
              label: '対局',
            ),
          ],
        ),
      ),
    );
  }
}

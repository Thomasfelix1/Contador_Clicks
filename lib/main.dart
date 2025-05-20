import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Clicks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClickCounterPage(),
    );
  }
}

class ClickCounterPage extends StatefulWidget {
  @override
  _ClickCounterPageState createState() => _ClickCounterPageState();
}

class _ClickCounterPageState extends State<ClickCounterPage> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  String get _clickText => _counter == 1 ? 'click' : 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de Clicks de Thomas'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            color: Colors.grey[300],
            height: 1,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter $_clickText',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _increment,
                  child: Text('+'),
                ),
                SizedBox(width: 25),
                ElevatedButton(
                  onPressed: _reset,
                  child: Text('Reset'),
                ),
                SizedBox(width: 25),
                ElevatedButton(
                  onPressed: _decrement,
                  child: Text('-'),
                ),
                SizedBox(width: 25),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

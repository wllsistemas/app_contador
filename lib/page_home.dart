import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _total = 0;
  String _mensagem = '';
  final int _limite = 20;

  void incrementa() {
    setState(() {
      if (_limite >= (_total + 1)) {
        _total++;
        _mensagem = 'Pode entrar !!!';
      } else {
        _mensagem = 'Lotado !!!';
      }
    });
  }

  void decrementa() {
    setState(() {
      if (_total > 0) {
        _total--;
        _mensagem = 'Pode entrar !!!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.4,
          child: Image.asset(
            'assets/images/restaurant.jpg',
            fit: BoxFit.cover,
            height: 1000,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pessoas: $_total',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: incrementa,
                  child: Text(
                    '+ 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: decrementa,
                  child: Text(
                    '- 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              _mensagem,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

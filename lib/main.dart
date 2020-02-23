import 'package:flutter/material.dart';
import './page_home.dart';

void main() => runApp(
      MaterialApp(
        title: 'Contador de Pessoas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );

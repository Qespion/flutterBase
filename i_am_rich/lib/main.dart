import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Center(
              child: Text("I am rich"),
            ),
          ),
          body: Center(
            child: Image(
              image: NetworkImage(
                  "https://s.iha.com/00159428976/Canggu-Le-temple-de-tanah-lot-a-proximite-de-canggu.jpeg"),
            ),
          ),
        ),
      ),
    );


import 'package:flutter/material.dart';

class TelaCinco extends StatefulWidget {
  @override
  _TelaCincoState createState() => _TelaCincoState();
}

class _TelaCincoState extends State<TelaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Cinco"),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Ação a ser tomada quando uma opção é selecionada
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Você selecionou: $result'),
                ),
              );
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Opção 1',
                child: Text('Opção 1'),
              ),
              PopupMenuItem<String>(
                value: 'Opção 2',
                child: Text('Opção 2'),
              ),
              PopupMenuItem<String>(
                value: 'Opção 3',
                child: Text('Opção 3'),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Quinta Tela!!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

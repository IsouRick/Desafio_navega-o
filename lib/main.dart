import 'package:flutter/material.dart';
import 'package:projeto_geovane/TelaSecundaria.dart';
import 'package:projeto_geovane/TelaTres.dart';
import 'package:projeto_geovane/TelaQuatro.dart';
import 'package:projeto_geovane/TelaCinco.dart';
import 'package:projeto_geovane/TelaSeis.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
    debugShowCheckedModeBanner: false,
  ));
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSecundaria()),
                );
              },
              child: Text("Ir para a segunda tela"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaTres()),
                );
              },
              child: Text("Ir para a Terceira tela"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuatro()),
                );
              },
              child: Text("Ir para a Quarta tela"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCinco()),
                );
              },
              child: Text("Ir para a Quinta tela"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSeis()),
                );
              },
              child: Text("Ir para a Sexta tela"),
            ),

          ],
          
        ),
      ),
    );
  }
}
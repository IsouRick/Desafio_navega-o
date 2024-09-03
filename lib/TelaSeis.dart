import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  bool _isChecked = false; // Variável para armazenar o estado do Checkbox

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false; // Atualiza o estado do Checkbox
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alinha o conteúdo à esquerda
          children: <Widget>[
            Text(
              "Segunda Tela!!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Espaçamento entre o texto e o Checkbox
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: _toggleCheckbox,
                ),
                Text("Marque esta opção"), // Texto ao lado do Checkbox
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TelaSeis extends StatefulWidget {
  @override
  _TelaSeisState createState() => _TelaSeisState();
}

class _TelaSeisState extends State<TelaSeis> {
  // Variável para armazenar o valor selecionado
  String _selectedOption = 'Option 1';

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value ?? 'Option 1'; // Atualiza o valor selecionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Seis"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alinha o conteúdo à esquerda
          children: <Widget>[
            Text(
              "Sexta Tela!!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Espaçamento entre o texto e o grupo de botões de rádio
            Text(
              "Escolha uma opção:",
              style: TextStyle(fontSize: 16),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text('Opção 1'),
                    leading: Radio<String>(
                      value: 'Option 1',
                      groupValue: _selectedOption,
                      onChanged: _handleRadioValueChange,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Opção 2'),
                    leading: Radio<String>(
                      value: 'Option 2',
                      groupValue: _selectedOption,
                      onChanged: _handleRadioValueChange,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Opção 3'),
                    leading: Radio<String>(
                      value: 'Option 3',
                      groupValue: _selectedOption,
                      onChanged: _handleRadioValueChange,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
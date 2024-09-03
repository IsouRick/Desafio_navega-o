
import 'package:flutter/material.dart';

class TelaQuatro extends StatefulWidget {
  @override
  _TelaQuatroState createState() => _TelaQuatroState();
}

class _TelaQuatroState extends State<TelaQuatro> {
  double _sliderValue = 0.0; // Variável para armazenar o valor do Slider

  void _onSliderChanged(double value) {
    setState(() {
      _sliderValue = value; // Atualiza o valor do Slider
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Quatro"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alinha o conteúdo à esquerda
          children: <Widget>[
            Text(
              "Quarta Tela!!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Espaçamento entre o texto e o Slider
            Text(
              "Valor do Slider: ${_sliderValue.toStringAsFixed(2)}", // Exibe o valor do Slider
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Espaçamento entre o texto e o Slider
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              divisions: 100, // Divisões para o Slider
              label: _sliderValue.toStringAsFixed(2), // Rótulo do Slider
              onChanged: _onSliderChanged, // Atualiza o valor quando o Slider é movido
            ),
          ],
        ),
      ),
    );
  }
}

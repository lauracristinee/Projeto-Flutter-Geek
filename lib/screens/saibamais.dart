// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';

void main() {
  runApp(SaibaMais());
}

class SaibaMais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //scaffold para criar um layout padrão
    //a partir daqui a criação do gradient roxo, com as posições do mesmo
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[Color(0xFF9B5DE5), Color.fromARGB(255, 236, 221, 255).withOpacity(0.5)],
          begin:Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
      ),
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SAIBA MAIS',
                    style: TextStyle(
                  fontFamily: 'Biofit',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
  children: [
    // card atrás do texto
    Card(
       shape: RoundedRectangleBorder( //deixar arredondado
    borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        height: 250,
        width: double.infinity, // ajuste para que o card tenha a largura total
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
    ),
    
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        ' O aniversário de São Paulo é comemorado em 25 de janeiro, marcando a fundação da cidade em 1554. São Paulo é o centro econômico do Brasil e uma das maiores metrópoles do mundo. Celebrar essa data é importante porque destaca a história, a diversidade cultural e o papel fundamental da cidade no desenvolvimento do país. Com isso observar eventos que realcem a beleza de SP torna-se imprescindível!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    ),
  ],
),
                  const SizedBox(height: 20),
                  Image.asset('images/sp.png', height: 200),
                ],
              ),
            ),

        ),
      );
  }
}
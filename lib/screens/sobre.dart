// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';

void main() {
  runApp(SobreNos());
}

class SobreNos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //scaffold para criar um layout padrão
    //a partir daqui a criação do gradient roxo, com as posições do mesmo
    body: Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('images/tela.png'), // substitua com o caminho da sua imagem
      fit: BoxFit.cover, // ajuste a imagem para cobrir toda a tela
    ),
  ),
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SOBRE NÓS',
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
        height: 230,
        width: double.infinity, // ajuste para que o card tenha a largura total
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
    ),
    
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'O aplicativo "Geeks por SP" foi desenvolvido por alunas do 3º ano do Ensino Médio integrado ao técnico em Desenvolvimento de Sistemas, Helena Menezes e Laura Cristine Silva, e tem como intuito, informar e dissipar eventos ao público "geek" na região do estado de São Paulo.',
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
                  Image.asset('images/geeks.png', height: 200),
                ],
              ),
            ),

        ),
      );
  }
}
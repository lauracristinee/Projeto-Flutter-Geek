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
                    'SOBRE NÓS',
                    style: TextStyle(
                  fontFamily: 'Biofit',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'O aplicativo "Geeks por SP" foi desenvolvido por alunas do 3º ano do Ensino Médio integrado ao técnico em Desenvolvimento de Sistemas, Helena Menezes e Laura Cristine Silva, e tem como intuito, informar e dissipar eventos ao público "geek" na região do estado de São Paulo.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                ),
                  const SizedBox(height: 20),
                  Image.asset('assets/geeks.png', height: 50),
                ],
              ),
            ),

        ),
      );
  }
}
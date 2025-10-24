import 'package:flutter/material.dart';
import 'package:memobile/models/moto_model.dart';
import 'package:memobile/widgets/moto_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Moto> motosDisponiveis = const [
    Moto(id: '1', modelo: 'CB 300F Twister', marca: 'Honda', descricao: 'A nova geração da Twister, com design moderno, desempenho confiável e economia, ideal tanto para o dia a dia quanto para pequenas viagens.', ano: 2025, precoDiaria: 85.00, imageUrl: 'assets/images/cb300f.jpeg'),
    Moto(id: '2', modelo: 'FZ25', marca: 'Yamaha', descricao: 'Uma moto robusta e ágil, equipada com motor de 250 cilindradas, ótima para uso urbano e estradas curtas, equilibrando conforto e esportividade.', ano: 2024, precoDiaria: 80.00, imageUrl: 'assets/images/fz25.jpeg'),
    Moto(id: '3', modelo: 'Intruder 125', marca: 'Suzuki', descricao: 'Modelo clássico e econômico da Suzuki, muito usado em escolas de pilotagem e deslocamentos urbanos pela confiabilidade e baixo consumo.', ano: 2012, precoDiaria: 22.00, imageUrl: 'assets/images/intruder125.jpeg'),
    Moto(id: '4', modelo: 'Fan 160', marca: 'Honda', descricao: 'Uma das motos mais populares do Brasil, reconhecida pela durabilidade, fácil manutenção e excelente economia de combustível.', ano: 2023, precoDiaria: 50.00, imageUrl: 'assets/images/fan160.jpeg'),
    Moto(id: '5', modelo: 'MT-07', marca: 'Yamaha', descricao: 'Naked de alta cilindrada com motor bicilíndrico potente, design agressivo e ótimo desempenho para quem busca emoção e estilo.', ano: 2022, precoDiaria: 135.00, imageUrl: 'assets/images/mt07.jpeg'),
    Moto(id: '6', modelo: 'XR 250 Tornado', marca: 'Yamaha', descricao: 'Uma trail clássica muito querida pelos aventureiros, com boa resistência em estradas de terra e versatilidade para uso urbano.', ano: 2008, precoDiaria: 40.00, imageUrl: 'assets/images/tornado.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motos Disponíveis'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: motosDisponiveis.length,
        itemBuilder: (context, index) {
          final moto = motosDisponiveis[index];
          
          return MotoCard(
            moto: moto,
            onButtonPressed: () {
              Navigator.pushNamed(context, '/moto-details', arguments: moto);
            },
          );
        },
      ),
    );
  }
}
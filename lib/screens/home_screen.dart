import 'package:flutter/material.dart';
import 'package:memobile/models/moto_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Moto> motosDisponiveis = [
    Moto(id: '1', modelo: 'CB 300F Twister', marca: 'Honda', ano: 2025, precoDiaria: 85.00, imageUrl: 'assets/images/cb300f.jpeg'),
    Moto(id: '2', modelo: 'FZ25', marca: 'Yamaha', ano: 2024, precoDiaria: 80.00, imageUrl: 'assets/images/fz25.jpeg'),
    Moto(id: '3', modelo: 'Intruder 125', marca: 'Suzuki', ano: 2012, precoDiaria: 22.00, imageUrl: 'assets/images/intruder125.jpeg'),
    Moto(id: '4', modelo: 'Fan 160', marca: 'Honda', ano: 2023, precoDiaria: 50.00, imageUrl: 'assets/images/fan160.jpeg'),
    Moto(id: '5', modelo: 'MT-07', marca: 'Yamaha', ano: 2022, precoDiaria: 135.00, imageUrl: 'assets/images/mt07.jpeg'),
    Moto(id: '6', modelo: 'XR 250 Tornado', marca: 'Yamaha', ano: 2008, precoDiaria: 40.00, imageUrl: 'assets/images/tornado.jpeg')
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
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: Padding(
                padding: const EdgeInsets.all(12.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    moto.imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),

                Text(
                  moto.modelo,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('${moto.marca} - ${moto.ano}'),
                const SizedBox(height: 10),
                Text(
                  'R\$ ${moto.precoDiaria.toStringAsFixed(2)} / dia',
                  style: const TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Reserva de ${moto.modelo} iniciada!')),
                    );
                  },
                    child: const Text('Reservar'),
                  ),
                )
              ],
            ),
          ),
            );
          },
      ),
    );
  }
}
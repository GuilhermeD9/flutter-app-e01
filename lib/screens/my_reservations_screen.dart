import 'package:flutter/material.dart';

import '../models/moto_model.dart';

class MyReservationsScreen extends StatelessWidget {
  const MyReservationsScreen({super.key});
  
  final List<Moto> motosReservadas = const [
    Moto(id: '2', modelo: 'FZ25', marca: 'Yamaha', ano: 2024, precoDiaria: 80.00, imageUrl: 'assets/images/fz25.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Reservas'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: motosReservadas.length,
          itemBuilder: (context, index) {
          final moto = motosReservadas[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: Image.network(moto.imageUrl, width: 100, fit: BoxFit.cover),
              title: Text(moto.modelo, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${moto.marca} - Devolvendo em 4 dias'),
              trailing: ElevatedButton(
                  onPressed: () {
                  },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red[400]),
                child: const Text('Cancelar'),
            ),
          ),
          );
          },
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../models/moto_model.dart';

class MyReservationsScreen extends StatelessWidget {
  const MyReservationsScreen({super.key});
  
  final List<Moto> motosReservadas = const [
    Moto(id: '1', modelo: 'FZ25', marca: 'Yamaha', descricao: 'Uma moto robusta e ágil, equipada com motor de 250 cilindradas, ótima para uso urbano e estradas curtas, equilibrando conforto e esportividade.', ano: 2024, precoDiaria: 80.00, imageUrl: 'assets/images/fz25.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Reservas'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: motosReservadas.isEmpty
      ? const Center(
        child: Text(
            'Você ainda não possui reservas.',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      )
      : ListView.builder(
        itemCount: motosReservadas.length,
          itemBuilder: (context, index) {
          final moto = motosReservadas[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            clipBehavior: Clip.antiAlias,
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  children: [

              ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                moto.imageUrl,
                width: 100,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported),
              ),
            ),
            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moto.modelo,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${moto.marca} - ${moto.ano}',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[700],
                foregroundColor: Colors.white,
              ),
                 onPressed: () {},
                 child: const Text('Cancelar'),
              ),
            ],
          ),
          ),
          );
          },
      ),
    );
  }
}
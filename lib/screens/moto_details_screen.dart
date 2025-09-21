import 'package:flutter/material.dart';
import 'package:memobile/models/moto_model.dart';

class MotoDetailsScreen extends StatelessWidget {
  const MotoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moto = ModalRoute.of(context)!.settings.arguments as Moto;

    return Scaffold(
      appBar: AppBar(
        title: Text(moto.modelo),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                moto.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              moto.modelo,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${moto.marca} - ${moto.ano}',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            Text(
              'R\$ ${moto.precoDiaria.toStringAsFixed(2)} / dia',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Descrição:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              moto.descricao,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Reserva confirmada para ${moto.modelo}!')),
                  );
                },
                child: const Text(
                  'Confirmar Reserva',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

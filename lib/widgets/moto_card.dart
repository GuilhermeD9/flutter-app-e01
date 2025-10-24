import 'package:flutter/material.dart';
import '../models/moto_model.dart'; // Importe o modelo

class MotoCard extends StatelessWidget {
  final Moto moto;
  final VoidCallback onButtonPressed; // Renomeei para ser mais genérico

  const MotoCard({
    super.key,
    required this.moto,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
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
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 150,
                    color: Colors.grey[200],
                    child: const Icon(Icons.image_not_supported, color: Colors.grey, size: 50),
                  );
                },
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
              child: ElevatedButton(
                onPressed: onButtonPressed,
                child: const Text('Reservar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
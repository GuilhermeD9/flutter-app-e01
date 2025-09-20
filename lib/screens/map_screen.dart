import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nossas Unidades'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: InteractiveViewer(
          minScale: 0.5,
          maxScale: 4.0,
        child: Image.asset(
            'assets/images/mapa.jpeg',
            fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Text('Não foi possível carregar o mapa.'),
              );
            },
          ),
        ),
      ),
    );
  }
}
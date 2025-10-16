import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    Text(
                      'AlugueME',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 42,
                        fontFamily: 'Audiowide',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                      height: 150,
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),

              const Text(
                '📱 O que é o AlugueME?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'O AlugueME é um aplicativo desenvolvido para facilitar o aluguel de motocicletas de forma rápida, prática e segura. '
                    'A plataforma conecta proprietários de motos que desejam disponibilizá-las para aluguel com usuários que buscam uma alternativa de transporte flexível e econômica.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 20),
              const Text(
                '⚙️ Como funciona?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '• Se você possui uma moto, pode cadastrá-la facilmente no aplicativo, definindo informações como modelo, valor de locação e disponibilidade.\n\n'
                    '• Se você busca uma moto para uso temporário, basta navegar pelo catálogo, escolher o modelo que deseja e realizar o aluguel diretamente pelo app.\n\n'
                    'O sistema foi pensado para garantir praticidade, transparência e segurança nas transações, unindo tecnologia e mobilidade em um só lugar.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 20),
              const Text(
                '🚀 Nosso objetivo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Promover o acesso facilitado à mobilidade urbana, ajudando tanto quem deseja gerar renda com seu veículo quanto quem precisa de uma solução de transporte flexível. '
                    'O AlugueME busca conectar pessoas e criar uma rede colaborativa de compartilhamento de motos.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Versão 1.0.0',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

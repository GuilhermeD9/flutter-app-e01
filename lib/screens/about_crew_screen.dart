import 'package:flutter/material.dart';
import 'package:memobile/models/membro_equipe_model.dart';

class AboutCrewScreen extends StatelessWidget {
  const AboutCrewScreen({super.key});

  final List<MembroEquipe> equipe = const [
    MembroEquipe(
        nome: 'Austin Farias',
        cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - Período 5',
        contribuicao: 'Organização da documentação da aplicação',
        bio: 'Raspa a bundinha nas curvinhas.',
        fotoUrl: 'assets/images/avatarGeneric.jpeg'
    ),
    MembroEquipe(
        nome: 'Antony Rafael',
        cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - Período 5',
        contribuicao: 'Desenvolvimento do App',
        bio: 'Motoqueiro maloquero.',
        fotoUrl: 'assets/images/avatarGeneric.jpeg'
    ),
    MembroEquipe(
        nome: 'Guilherme Silva',
        cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - Período 5',
        contribuicao: 'Desenvolvimento do App',
        bio: 'Filho do braia.',
        fotoUrl: 'assets/images/avatarGeneric.jpeg'
    ),
    MembroEquipe(
        nome: 'Matheus Souza',
        cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - Período 5',
        contribuicao: 'Organização da documentação da aplicação',
        bio: 'Refletor de luz.',
        fotoUrl: 'assets/images/avatarGeneric.jpeg'
    ),
    MembroEquipe(
        nome: 'Marcos Guilherme',
        cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - Período 5',
        contribuicao: 'Desenvolvimento do App',
        bio: 'Esse cara é pai.',
        fotoUrl: 'assets/images/avatarGeneric.jpeg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nossa Equipe'),
      ),
      body: ListView.builder(
        itemCount: equipe.length,
        itemBuilder: (context, index) {
          final membro = equipe[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(membro.fotoUrl),
                ),
              title: Text(membro.nome, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(membro.cursoPeriodo),

              onTap: () {
                  print('Membro cutucado(laele): ${membro.nome}');
              }
            ),
          );
        },
      ),
    );
  }
}
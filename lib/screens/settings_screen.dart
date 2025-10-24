import 'package:flutter/material.dart';
import 'package:memobile/widgets/menu_option_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: ListView(
        children: [
          MenuOptionTile(
            title: 'Editar Perfil',
            subtitle: 'Altere suas informações pessoais',
            icon: Icons.person_outline,
            onTap: () {
              Navigator.pushNamed(context, '/edit-profile');
            },
          ),
          MenuOptionTile(
            title: 'Cadastrar Novo Veículo',
            subtitle: 'Adicione uma nova moto ao catálogo',
            icon: Icons.motorcycle_outlined,
            onTap: () {
              Navigator.pushNamed(context, '/register-vehicle');
            },
          ),
          MenuOptionTile(
            title: 'Nossas Unidades',
            subtitle: 'Encontre a loja mais próxima',
            icon: Icons.location_on_outlined,
            onTap: () {
              Navigator.pushNamed(context, '/unity-map');
            },
          ),

          SwitchListTile(
            title: const Text('Receber notificações'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
            secondary: const Icon(Icons.notifications_outlined),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),

          SwitchListTile(
            title: const Text('Modo Escuro'),
            value: _darkModeEnabled,
            onChanged: (bool value) {
              setState(() {
                _darkModeEnabled = value;
              });
            },
            secondary: const Icon(Icons.dark_mode_outlined),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),

          MenuOptionTile(
            title: 'Sobre a equipe',
            subtitle: 'Conheça os criadores do projeto',
            icon: Icons.people_outline,
            onTap: () {
              Navigator.pushNamed(context, '/about-crew');
            },
          ),
          MenuOptionTile(
            title: 'Sobre o App',
            subtitle: 'Saiba mais sobre o AlugaMe e como ele funciona',
            icon: Icons.info_outline,
            onTap: () {
              Navigator.pushNamed(context, '/about-app');
            },
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),

          ListTile(
            leading: Icon(Icons.logout, color: Colors.red[700]),
            title: Text('Sair', style: TextStyle(color: Colors.red[700])),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
            },
          )
        ],
      ),
    );
  }
}
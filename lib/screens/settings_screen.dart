import 'package:flutter/material.dart';

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
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Editar Perfil'),
            subtitle: const Text('Altere suas informações pessoais'),
            onTap: () {
              Navigator.pushNamed(context, '/edit-profile');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.motorcycle_outlined),
            title: const Text('Cadastrar Novo Veículo'),
            subtitle: const Text('Adicione uma nova moto ao catálogo'),
            onTap: () {
              Navigator.pushNamed(context, '/register-vehicle');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.location_on_outlined),
            title: const Text('Nossas Unidades'),
            subtitle: const Text('Encontre a loja mais próxima'),
            onTap: () {
              Navigator.pushNamed(context, '/unity-map');
            },
          ),
          const Divider(),

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
          const Divider(),

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
          const Divider(),

          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('Sobre a equipe'),
            subtitle: const Text('Conheça os criadores do projeto'),
            onTap: () {
              Navigator.pushNamed(context, '/about-crew');
            },
          ),
          const Divider(),

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
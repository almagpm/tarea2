import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/150?img=63'),
              ),
              accountName: Text('Andres Roque Rangel'),
              accountEmail: Text('20030928@itcelaya.edu.mx')),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Practica N'),
            subtitle: Text('Aqui ira la descripción si tuviera una.'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: const Icon(Icons.close),
            title: const Text('Salir'),
            subtitle: const Text('Vamo a salir.'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }
}

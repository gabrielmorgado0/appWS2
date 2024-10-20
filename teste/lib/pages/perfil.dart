import 'package:flutter/material.dart';
import 'package:teste/models/drawer.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();  // Agora o Drawer será aberto corretamente
              },
            );
          },
        ),
      ),
      drawer: const CustomDrawer(), // Usa o drawer que você criou
      body: const Center(
        child: Text('Página de Perfil'),
      ),
    );
  }
}
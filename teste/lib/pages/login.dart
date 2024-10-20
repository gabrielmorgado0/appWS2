// lib/tela_login.dart
import 'package:teste/pages/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:teste/biometria_service.dart';
import 'perfil.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final BiometriaService biometriaService = BiometriaService();

  @override
  void initState() {
    super.initState();
    _autenticarBiometria();
  }

  Future<void> _autenticarBiometria() async {
    bool autenticado = await biometriaService.autenticar();
    if (autenticado) {
      // Se a autenticação for bem-sucedida, navegue automaticamente para a tela de perfil
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const TelaPerfil()),
      );
    } else {
      // Caso falhe, mostre uma mensagem e continue na mesma página
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Autenticação falhou'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Image.network(
            height: 100,
            "https://static.vecteezy.com/system/resources/previews/016/916/479/original/placeholder-icon-design-free-vector.jpg",
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () {
                    // Navega para a TelaPerfil sem autenticação biométrica
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const TelaPerfil()),
                    );
                  },
                  child: const Text("Entrar"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
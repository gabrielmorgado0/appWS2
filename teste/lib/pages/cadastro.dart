import 'package:teste/pages/perfil.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class TelaCadastro extends StatelessWidget{
  const TelaCadastro({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const TelaPerfil())
                );
          },
        )
      ),
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(),
                  ),
                ),
                
              ),

            SizedBox(height: 10),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Cidade',
                    border: OutlineInputBorder(),
                  ),
                ),
                
              ),
              SizedBox(height: 10),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Curso',
                    border: OutlineInputBorder(),
                  ),
                ),
                
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                
              ),

              SizedBox(height: 35),

              ElevatedButton(
                onPressed: () {
                    Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const TelaLogin())
                    );
               },
              child: Text(
                "Cadastrar-se",
              style: TextStyle(
                color: Colors.white
              ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              )


            ],
          ),
        ),
      )
    );
  }
}

Widget _buildTextField(BuildContext context){
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Nome Completo',
      border: OutlineInputBorder(),
    ),
  );
}
// lib/biometria_service.dart
import 'package:local_auth/local_auth.dart';

class BiometriaService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  Future<bool> autenticar() async {
    try {
      

      // Tenta autenticar com biometria
      bool autenticado = await _localAuth.authenticate(
        localizedReason: 'Por favor, autentique-se para continuar',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );

      return autenticado;
    } catch (e) {
      // Em caso de erro, retorna falso
      print('Erro na autenticação biométrica: $e');
      return false;
    }
  }
}
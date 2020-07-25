import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@lazySingleton
class AuthenticationService {
  final _localAuth = LocalAuthentication();

  Future<bool> authenticate({String reason}) async {
    return await _localAuth.authenticateWithBiometrics(localizedReason: reason);
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruithub/core/services/firebase_auth_service/exception.dart';
import 'package:fruithub/features/auth/domain/entities/user_entity.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw customException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw customException(
          message: 'The account already exists for that email.',
        );
      }
      else{
        throw customException(
          message: "An error occurred while creating the user.",
        );
      }
    } catch (e) {
      throw customException(
        message: "An error occurred while creating the user.",
      );
    }
  }
}

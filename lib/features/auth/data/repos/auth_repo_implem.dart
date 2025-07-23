import 'package:dartz/dartz.dart';
import 'package:fruithub/core/errors/failures.dart';
import 'package:fruithub/core/services/firebase_auth_service/exception.dart';
import 'package:fruithub/core/services/firebase_auth_service/firebase_auth_service.dart';
import 'package:fruithub/features/auth/data/models/user_model.dart';
import 'package:fruithub/features/auth/domain/entities/user_entity.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImplem extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImplem({required this.firebaseAuthService});

  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email,
        password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on customException catch (e) {
      return left(ServiceFailure(e.message));
    } catch (e) {
      return left(ServiceFailure(e.toString()));
    }
  }
}

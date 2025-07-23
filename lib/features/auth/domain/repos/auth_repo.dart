import 'package:dartz/dartz.dart';
import 'package:fruithub/core/errors/failures.dart';
import 'package:fruithub/features/auth/domain/entities/user_entity.dart';
import 'package:fruithub/generated/l10n.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
}

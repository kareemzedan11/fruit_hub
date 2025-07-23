import 'package:bloc/bloc.dart';
import 'package:fruithub/core/errors/failures.dart';
import 'package:fruithub/features/auth/domain/entities/user_entity.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruithub/generated/l10n.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    emit(SignupLoading());

    final result = await authRepo.createUserWithEmailAndPassword(
      email,
      password,
      name,
    );

    result.fold(
      (failure) => emit(SignupFailure(message: failure.message)),
      (user) => emit(SignupSuccess(userEntity: user)),
    );
  }
}

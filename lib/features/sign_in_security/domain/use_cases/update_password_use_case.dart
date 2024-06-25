import 'package:cars/core/errors/failure_message.dart';
import 'package:cars/core/usecases/use_case.dart';
import 'package:cars/features/sign_in_security/domain/entities/sign_in_security_entity.dart';
import 'package:cars/features/sign_in_security/domain/repos/sign_in_and_security_repo.dart';
import 'package:dartz/dartz.dart';

class UpdatePasswordUseCase
    extends BaseUseCase<SignInSecurityEntity, SignInSecurityEntity> {
  final SignInAndSecurityRepo _signInAndSecurityRepo;

  UpdatePasswordUseCase({required SignInAndSecurityRepo signInAndSecurityRepo})
      : _signInAndSecurityRepo = signInAndSecurityRepo;

  @override
  Future<Either<FailureServ, SignInSecurityEntity>> call(
    SignInSecurityEntity parameter,
  ) async {
    return await _signInAndSecurityRepo.updatePassword(
      model: parameter,
    );
  }
}

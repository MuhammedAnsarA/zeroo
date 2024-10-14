import 'package:dartz/dartz.dart';
import 'package:zeroo/core/usecase/usecase.dart';
import 'package:zeroo/domain/auth/repository/auth.dart';
import 'package:zeroo/service_locator.dart';

class SendPasswordResetEmailUsecase extends UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<AuthRepository>().sendPasswordResetEmail(params!);
  }
}

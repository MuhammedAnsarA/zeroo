import 'package:dartz/dartz.dart';
import 'package:zeroo/core/usecase/usecase.dart';
import 'package:zeroo/data/auth/models/user_signin_req.dart';
import 'package:zeroo/domain/auth/repository/auth.dart';
import 'package:zeroo/service_locator.dart';

class SignInUsecase extends UseCase<Either, UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq? params}) async {
    return await sl<AuthRepository>().signIn(params!);
  }
}

import 'package:dartz/dartz.dart';
import 'package:zeroo/core/usecase/usecase.dart';
import 'package:zeroo/data/auth/models/user_creation_req.dart';
import 'package:zeroo/domain/auth/repository/auth.dart';
import 'package:zeroo/service_locator.dart';

class SignUpUsecase extends UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signUp(params!);
  }
}

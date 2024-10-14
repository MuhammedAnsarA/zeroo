import 'package:dartz/dartz.dart';
import 'package:zeroo/core/usecase/usecase.dart';
import 'package:zeroo/domain/auth/repository/auth.dart';
import 'package:zeroo/service_locator.dart';

class GetUserUsecase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }
}

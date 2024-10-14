import 'package:zeroo/core/usecase/usecase.dart';
import 'package:zeroo/domain/auth/repository/auth.dart';
import 'package:zeroo/service_locator.dart';

class IsLoggedInUsecase extends UseCase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
}

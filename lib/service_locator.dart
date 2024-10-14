import 'package:get_it/get_it.dart';
import 'package:zeroo/data/auth/repository/auth_repository_impl.dart';
import 'package:zeroo/data/auth/source/auth_firebase_service.dart';
import 'package:zeroo/domain/auth/repository/auth.dart';
import 'package:zeroo/domain/auth/usecases/is_logged_in.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  // Usecases
  sl.registerSingleton<IsLoggedInUsecase>(IsLoggedInUsecase());
}

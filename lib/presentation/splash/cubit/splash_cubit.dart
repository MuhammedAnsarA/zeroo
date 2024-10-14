import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeroo/domain/auth/usecases/is_logged_in.dart';
import 'package:zeroo/presentation/splash/cubit/splash_state.dart';
import 'package:zeroo/service_locator.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  Future<void> appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    var isLoggedIn = await sl<IsLoggedInUsecase>().call();
    if (isLoggedIn) {
      emit(Authenticated());
    } else {
      emit(UnAuthenticated());
    }
  }
}

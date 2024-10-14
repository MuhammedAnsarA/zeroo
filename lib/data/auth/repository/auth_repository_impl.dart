import 'package:dartz/dartz.dart';
import 'package:zeroo/data/auth/models/user_creation_req.dart';
import 'package:zeroo/data/auth/models/user_signin_req.dart';
import 'package:zeroo/data/auth/source/auth_firebase_service.dart';
import 'package:zeroo/domain/auth/repository/auth.dart';
import 'package:zeroo/service_locator.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either> getAges() async {
    return await sl<AuthFirebaseService>().getAges();
  }

  @override
  Future<Either> getUser() async {
    return await sl<AuthFirebaseService>().getUser();
  }

  @override
  Future<bool> isLoggedIn() async {
    return await sl<AuthFirebaseService>().isLoggedIn();
  }

  @override
  Future<Either> sendPasswordResetEmail(String email) async {
    return await sl<AuthFirebaseService>().sendPasswordResetEmail(email);
  }

  @override
  Future<Either> signIn(UserSigninReq user) async {
    return await sl<AuthFirebaseService>().signIn(user);
  }

  @override
  Future<Either> signUp(UserCreationReq user) async {
    return await sl<AuthFirebaseService>().signUp(user);
  }
}

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'package:flutter_application/App/repositories/auth_repository.dart';

class AuthController extends GetxController {
  AuthController({this.authRepository}) : assert(authRepository != null);
  final IAuthRepository? authRepository;

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FacebookAuth _facebookAuth = FacebookAuth.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? email, password, name;

  final Rxn<User> _user = Rxn<User>();

  String? get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // ignore: avoid_print
        print('User is currently signed out!');
      } else {
        // ignore: avoid_print
        print('User is signed in!');
      }
    });
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> signInWithGoogle() async {
    GoogleSignInAccount? gooleAcount = await _googleSignIn.signIn();
    // ignore: avoid_print
    print('gooleAcoount : $gooleAcount');
    GoogleSignInAuthentication googleSignInAuthentication =
        await gooleAcount!.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    // ignore: avoid_print
    print('UserCredential : $userCredential');
  }

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await _facebookAuth
        .login(); // by the fault we request the email and the public profile

    // loginBehavior is only supported for Android devices, for ios it will be ignored
    // final result = await FacebookAuth.instance.login(
    //   permissions: ['email', 'public_profile', 'user_birthday', 'user_friends', 'user_gender', 'user_link'],
    //   loginBehavior: LoginBehavior
    //       .DIALOG_ONLY, // (only android) show an authentication dialog instead of redirecting to facebook app
    // );

    if (result.status == LoginStatus.success) {
      AccessToken? accessToken = result.accessToken;
      // ignore: avoid_print
      print('faceBook accessToken : $accessToken');
      // ignore: unused_local_variable
      final userData = await FacebookAuth.instance.getUserData();
      // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");

      // Create a credential from the access token
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      UserCredential user = await _auth.signInWithCredential(credential);
      // ignore: avoid_print
      print('facebook login : $user');
      return user;
    } else {
      return null;
    }
  }

  Future<void> faceBokLogOut() async {
    await _facebookAuth.logOut();
    // _accessToken = null;
    // _userData = null;
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email!, password: password!)
          // ignore: avoid_print
          .then((value) => print(value));
      // Get.offAll(HomeView());
    } on FirebaseException catch (e) {
      snack(e.message);
    }
  }

  void signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
      } else if (e.code == 'email-already-in-use') {
        // ignore: avoid_print
        print('The account already exists for that email.');
      }
    }
  }
}

void snack(String? message) {}

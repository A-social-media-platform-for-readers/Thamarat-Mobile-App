import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final _googleSignIn = GoogleSignIn(
      clientId:
          '184726423360-mo8ub16d8c27pj5cj8q1c7ubdqcsi1dl.apps.googleusercontent.com',
      scopes: <String>[
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ]);
  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
}

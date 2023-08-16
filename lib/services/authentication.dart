import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/register.dart';

Future createuseraccout() async {
  try {
    final credential = FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroler1.text, password: passwordcontroler2.text);
    print('succsesfully added your Account');
    return credential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  }
}

Future signinwithemailpassword() async {
  try {
    final credential = FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroler.text, password: passwordcontroler.text);
    print('succsesfully Sign in your Account');
    return credential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}

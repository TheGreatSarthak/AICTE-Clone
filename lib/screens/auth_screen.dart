import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/auth_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLoading = false;
  final auth = FirebaseAuth.instance;
  void _submitAuthForm(
      String email, String password, bool isLogin, BuildContext context) async {
   // ignore: unused_local_variable
   UserCredential userCredential;

    try {
      setState(() {
        _isLoading = true;
      });
      if (isLogin) {
        userCredential = await auth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        userCredential = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
      }
    } on PlatformException catch (error) {
      var message = 'An error occured , please chech your credentials';

      if (error.message != null) {
        message = error.message.toString();
      }

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(context).colorScheme.error,
      ));

      setState(() {
        _isLoading = false;
      });
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(error.toString()),
        backgroundColor: Theme.of(context).colorScheme.error,
      ));
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AuthForm(_submitAuthForm, _isLoading),
    );
  }
}

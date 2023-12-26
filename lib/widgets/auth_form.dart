import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm(this.submit, this.isLoading, {Key? key}) : super(key: key);
  final bool isLoading;
  final void Function(
      String email, String password, bool isLogin, BuildContext context) submit;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  var _isLogin = true;
  //String _confirmPssword = '';
  String _userPassword = '';
  String _userEmail = '';

  final checkPass = TextEditingController();

  void _trySubmit() {
    final isvaldi = _formkey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isvaldi) {
      _formkey.currentState!.save();
      widget.submit(_userEmail.trim(), _userPassword.trim(), _isLogin, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      const SizedBox(
        height: 100,
      ),
      SizedBox(
        child: Image.asset('assets/images/aicte_image.jpg'),
        width: double.infinity,
        height: 150,
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  key: const ValueKey('email'),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Please enter a valid email.';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _userEmail = newValue.toString();
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    label: Text('Email'),
                    labelStyle: TextStyle(color: Colors.white),
                  )),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: checkPass,
                  obscureText: true,
                  key: const ValueKey('Password'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Password !';
                    } else if (value.toString().length < 7) {
                      return 'Password must be atleast 7 character long';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _userPassword = newValue.toString();
                  },
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    label: Text('Password'),
                    labelStyle: TextStyle(color: Colors.white),
                  )),
              // if (!_isLogin)
              //   TextFormField(
              //     style: TextStyle(color: Colors.white),
              //     key: ValueKey('Confirm Password'),
              //     validator: (value) {
              //       if (value != checkPass.toString()) {
              //         return 'Password does not match.';
              //       }
              //       return null;
              //     },
              //     onSaved: (newValue) {
              //       _confirmPssword = newValue.toString();
              //     },
              //     decoration: InputDecoration(
              //       enabledBorder: UnderlineInputBorder(
              //           borderSide: BorderSide(color: Colors.white)),
              //       label: Text('Confirm Password'),
              //       labelStyle: TextStyle(color: Colors.white),
              //     ),
              //     obscureText: true,
              //   ),
              const SizedBox(
                height: 15,
              ),
              if (widget.isLoading) const CircularProgressIndicator(),
              if (!widget.isLoading)
                if (_isLogin)
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password',
                        style: TextStyle(color: Colors.white)),
                  ),
              if (!widget.isLoading)
                ElevatedButton(
                    onPressed: _trySubmit,
                    child: Text(
                      _isLogin ? 'Login' : 'Signup',
                      style: const TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(244, 85, 4, 1)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))))),

              if (!widget.isLoading)
                TextButton(
                    onPressed: () {
                      setState(() {
                        _isLogin = !_isLogin;
                      });
                    },
                    child: Text(
                      _isLogin
                          ? 'Create new account'
                          : 'I have already an account',
                      style: const TextStyle(color: Colors.white),
                    )),
            ],
          ),
        ),
      ),
    ]));
  }
}

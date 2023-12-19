import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  //TODO: 1. Deklarasikan Variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Pasang AppBar
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      //TODO: 3. Pasang body
      body: Center(
        child: Form(
          child: Column(
            //TODO: 4 Atur mainAxisAlignment dan crossAxisAlignment
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO: 5. Pasang TextFormField Nama_Pengguna
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: "Nama Pengguna",
                  border: OutlineInputBorder(),
                ),
              ),
              //TODO: 6. Pasang TextFormField Kata Sandi
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: "Kata Sandi",
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    )),
                obscureText: _obscurePassword,
              ),
              //TODO: 7. Pasang ElevatedButton Sign In
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('Sign In')),
              //TODO: 8. Pasang TextButton Sign Up
              SizedBox(height: 18),
              // TextButton(
              //     onPressed: () {},
              //     child: Text("Belum punya akun? Daftar di sini")),
              RichText(
                text: TextSpan(
                  text:"Belum Punya akun?",
                  style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                  children: <TextSpan>[
                TextSpan(
                  text: 'Daftar disini',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 16
                ),
                recognizer: TapGestureRecognizer()
                ..onTap = (){},
                ),
              ],
          ),
        ),
          
  }
}

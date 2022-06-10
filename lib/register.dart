import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  final VoidCallback onClickedSignIn;

  const signup({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          color: Color.fromARGB(255, 128, 128, 69),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Selamat Datang",
                  style: TextStyle(fontSize: 30, color: Colors.grey)),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "Masukkan Username",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  prefixIcon: Icon(
                    Icons.key,
                    size: 40,
                  ),
                  hintText: "Masukkan Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.grey,
                elevation: 5,
                child: Container(
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () => signUp(),
                    child: Center(
                      child: Text("Buat Akun",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

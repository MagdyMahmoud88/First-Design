import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControler = TextEditingController();

  TextEditingController passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login Screen',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/login.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailControler,
                decoration: const InputDecoration(
                  labelText: "ENTER YOUR EMAIL",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: passwordContoller,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "PASSWORD",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.5),
                child: Row(
                  children: [
                    const Text(
                      'don\'t have an account ?',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

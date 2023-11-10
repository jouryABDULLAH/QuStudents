import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _signupState();
}

class _signupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sign Up'),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              const SizedBox(height: 130),
              Image.asset('assets/images/logo.png', width: 250, height: 250),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Emaile',
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 104, 196, 196),
                          width: 1.0)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 104, 196, 196),
                          width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 104, 196, 196),
                          width: 1.0)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'password',
                  prefixIcon: const Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 80, 152, 194),
                          width: 1.0)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 104, 196, 196),
                          width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 104, 196, 196),
                          width: 1.0)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'confirm password',
                  prefixIcon: const Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 80, 152, 194),
                          width: 1.0)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 104, 196, 196),
                          width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 104, 196, 196),
                          width: 1.0)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                  elevation: 5.0,
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 70),
                  child: const Text('Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      )),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
            ]),
          )),
    );
  }
}

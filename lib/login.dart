import 'package:flutter/material.dart';
import 'package:quapp/RootPage.dart';
import 'package:quapp/forgetpass.dart';
import 'package:quapp/signup.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 150),
              Image.asset('assets/images/logo.png', width: 250, height: 250),
              Text(
                "منارة",
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 135, 150),
                  fontSize: 40,
                ),
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forget The password ?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 117, 135, 150),
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const password();
                      }));
                    },
                    child: const Text(
                      ' Click here',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              /*
              
                */

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(179, 1, 17, 248),
                      Color.fromARGB(179, 0, 157, 255),
                      Color.fromARGB(179, 21, 134, 160),
                    ],
                  ),
                ),
                child: MaterialButton(
                  elevation: 5.0,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 70),
                  child: const Text('Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 252, 249, 249),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      )),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const MyHome();
                    }));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do not have an account ? ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 117, 135, 150),
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

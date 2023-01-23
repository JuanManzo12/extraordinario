import 'package:extraordinary_exam/pantallas/pantalla_libros.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id = "loginpage";
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final textoinputEmail = TextEditingController();
  final textoinputPassword = TextEditingController();

  Future singIn() async {
    try {
      final conexion = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: textoinputEmail.text.trim(),
          password: textoinputPassword.text.trim());
      if (conexion != null) {
        // ignore: use_build_context_synchronously
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const PantallaUsuarios();
        }));
      }
    } catch (e) {
      // print(e);
    }
  }

  @override
  void dispose() {
    textoinputEmail.dispose();
    textoinputPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 55,
                      ),
                      const Text(
                        "Inicia Sesion",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 112, 5, 5)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Bienvenido a la bliblioteca online mas grande del mundo!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'openSans',
                            color: Color.fromARGB(255, 112, 5, 5)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: textoinputEmail,
                        decoration: const InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 5, 5)))),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: textoinputPassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 5, 5)))),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "¿Olvidaste tu contraseña?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 112, 5, 5)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        height: 60,
                        color: const Color.fromARGB(255, 112, 5, 5),
                        onPressed: () {
                          singIn();
                        },
                        child: const Text(
                          "Iniciar Sesion",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

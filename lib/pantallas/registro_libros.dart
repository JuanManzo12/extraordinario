import 'package:extraordinary_exam/dbconfiguracion/dbservicios.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistroUsuarios extends StatefulWidget {
  static String id = "registro_usuarios";
  const RegistroUsuarios({Key key}) : super(key: key);

  @override
  State<RegistroUsuarios> createState() => _RegistroUsuariosState();
}

class _RegistroUsuariosState extends State<RegistroUsuarios> {
  final TextEditingController controladorDeNombreLibro =
      TextEditingController();
  // final TextEditingController controladorDeEmail = TextEditingController();
  // final TextEditingController controladorDeContrasena = TextEditingController();
  final TextEditingController controladorDeYear = TextEditingController();
  final TextEditingController controladorDeID = TextEditingController();
  final TextEditingController controladorDeFoto = TextEditingController();
  final TextEditingController controladorDeAuthor = TextEditingController();

  // Future registroDeUsuario() async {
  //   await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: controladorDeEmail.text.trim(),
  //       password: controladorDeContrasena.text.trim());
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Nuevo Libro'),
        backgroundColor: const Color.fromARGB(255, 112, 5, 5),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controladorDeID,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffEBDCFA),
                              prefixIcon: Icon(
                                Icons.numbers,
                                color: Color.fromARGB(255, 112, 5, 5),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 5, 5)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              labelText: "ID",
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controladorDeNombreLibro,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffEBDCFA),
                              prefixIcon: Icon(
                                Icons.book,
                                color: Color.fromARGB(255, 112, 5, 5),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 5, 5)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              labelText: "Nombre del Libro",
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)))),
                        ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // TextField(
                        //   controller: controladorDeEmail,
                        //   decoration: const InputDecoration(
                        //       filled: true,
                        //       fillColor: Color(0xffEBDCFA),
                        //       prefixIcon: Icon(
                        //         Icons.email,
                        //         color: const Color.fromARGB(255, 112, 5, 5),
                        //       ),
                        //       border: OutlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: const Color.fromARGB(255, 112, 5, 5)),
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(50))),
                        //       enabledBorder: OutlineInputBorder(
                        //         borderSide: BorderSide(
                        //             color: const Color.fromARGB(255, 112, 5, 5)),
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(50),
                        //         ),
                        //       ),
                        //       labelText: "Email",
                        //       labelStyle: TextStyle(
                        //           fontSize: 15, fontWeight: FontWeight.bold),
                        //       focusedBorder: UnderlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: const Color.fromARGB(255, 112, 5, 5)))),
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // TextField(
                        //   controller: controladorDeContrasena,
                        //   obscureText: true,
                        //   decoration: const InputDecoration(
                        //       filled: true,
                        //       fillColor: Color(0xffEBDCFA),
                        //       prefixIcon: Icon(
                        //         Icons.password,
                        //         color: const Color.fromARGB(255, 112, 5, 5),
                        //       ),
                        //       border: OutlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: const Color.fromARGB(255, 112, 5, 5)),
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(50))),
                        //       enabledBorder: OutlineInputBorder(
                        //         borderSide: BorderSide(
                        //             color: const Color.fromARGB(255, 112, 5, 5)),
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(50),
                        //         ),
                        //       ),
                        //       labelText: "Password",
                        //       labelStyle: TextStyle(
                        //           fontSize: 15, fontWeight: FontWeight.bold),
                        //       focusedBorder: UnderlineInputBorder(
                        //           borderSide: BorderSide(
                        //               color: const Color.fromARGB(255, 112, 5, 5)))),
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controladorDeYear,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffEBDCFA),
                              prefixIcon: Icon(
                                Icons.numbers,
                                color: Color.fromARGB(255, 112, 5, 5),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 5, 5)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              labelText: "Año de Lanzamiento",
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: controladorDeAuthor,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffEBDCFA),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 112, 5, 5),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 5, 5)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              labelText: "Nombre del Autor",
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: controladorDeFoto,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffEBDCFA),
                              prefixIcon: Icon(
                                Icons.image,
                                color: Color.fromARGB(255, 112, 5, 5),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 5, 5)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              labelText: "Foto",
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 112, 5, 5)))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          minWidth: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          height: 60,
                          color: const Color.fromARGB(255, 112, 5, 5),
                          onPressed: () async {
                            await agregarLibro(
                                    controladorDeNombreLibro.text,
                                    // controladorDeEmail.text,
                                    // controladorDeContrasena.text,
                                    controladorDeYear.text,
                                    controladorDeID.text,
                                    controladorDeAuthor.text,
                                    controladorDeFoto.text)
                                .then((_) => {
                                      setState(() {}),
                                      Navigator.pop(context),
                                    });

                            // registroDeUsuario();
                          },
                          textColor: Colors.white,
                          child: const Text(
                            "Agregar",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ]),
      ),
    ));
  }
}

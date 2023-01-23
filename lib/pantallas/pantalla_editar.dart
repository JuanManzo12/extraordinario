import 'package:extraordinary_exam/dbconfiguracion/dbservicios.dart';
import 'package:flutter/material.dart';

class PantallaEditar extends StatefulWidget {
  static String id = "pantalla_editar";
  const PantallaEditar({Key key, this.userID}) : super(key: key);
  final String userID;

  @override
  State<PantallaEditar> createState() => _PantallaEditarState();
}

class _PantallaEditarState extends State<PantallaEditar> {
  final TextEditingController controladorDeNombreLibro =
      TextEditingController(text: "");
  final TextEditingController controladorDeYear =
      TextEditingController(text: "");
  final TextEditingController controladorDePhoto =
      TextEditingController(text: "");
  final TextEditingController controladorDeAuthor =
      TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Editar Inventario'),
          backgroundColor: const Color.fromARGB(255, 112, 5, 5),
        ),
        body: FutureBuilder(
          future: getLibroPorID(widget.userID),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              controladorDeNombreLibro.text = snapshot.data["name"];
              // controladorDeEmail.text = snapshot.data["email"];
              // controladorDeContrasena.text = snapshot.data["password"];
              controladorDeYear.text = snapshot.data["year"];
              controladorDePhoto.text = snapshot.data["photo"];
              controladorDeAuthor.text = snapshot.data["author"];
              return SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 0),
                            margin: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
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
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 112, 5, 5)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      labelText: "Nombre del Libro",
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)))),
                                ),
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
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 96, 5, 112)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      labelText: "Año de Lanzamiento",
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)))),
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
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 96, 5, 112)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      labelText: "Autor",
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)))),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  controller: controladorDePhoto,
                                  decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xffEBDCFA),
                                      prefixIcon: Icon(
                                        Icons.image,
                                        color: Color.fromARGB(255, 112, 5, 5),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 96, 5, 112)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      labelText: "Foto",
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 112, 5, 5)))),
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
                                    await editarLibro(
                                            controladorDeNombreLibro.text,
                                            // controladorDeEmail.text,
                                            // controladorDeContrasena.text,
                                            controladorDeYear.text,
                                            widget.userID,
                                            controladorDeAuthor.text,
                                            controladorDePhoto.text)
                                        .then((_) => {
                                              setState(() {}),
                                              Navigator.pop(context),
                                            });
                                  },
                                  textColor: Colors.white,
                                  child: const Text(
                                    "Editar",
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
              );
            }
          },
        ),
      ),
    );
  }
}

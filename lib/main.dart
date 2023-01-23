import 'package:extraordinary_exam/pantallas/login.dart';
import 'package:extraordinary_exam/pantallas/pantalla_editar.dart';
import 'package:extraordinary_exam/pantallas/pantalla_libros.dart';
import 'package:extraordinary_exam/pantallas/registro_libros.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion Extraordinario',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => const Login(),
        PantallaUsuarios.id: (context) => const PantallaUsuarios(),
        PantallaEditar.id: (context) => const PantallaEditar(),
        RegistroUsuarios.id: (context) => const RegistroUsuarios(),
      },
    );
  }
}

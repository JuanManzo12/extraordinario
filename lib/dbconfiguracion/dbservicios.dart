import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore basededatos = FirebaseFirestore.instance;

Future<List> getlibros() async {
  List libros = [];

  CollectionReference librosCollection = basededatos.collection('libros');
  QuerySnapshot librosSnapshot = await librosCollection.get();
  for (var doc in librosSnapshot.docs) {
    libros.add(doc.data());
  }

  return libros;
}

Future<void> agregarLibro(
  String name,
  // String email,
  // String password,
  String year,
  String id,
  String author,
  String photo,
) async {
  await basededatos.collection('libros').doc(id).set(
    {
      'id': id,
      'author': author,
      'name': name,
      // 'email': email,
      // 'password': beca,
      'year': year,
      'photo': photo,
    },
  );
}

Future<void> editarLibro(
  String name,
  // String email,
  // String password,
  String year,
  String id,
  String author,
  String photo,
) async {
  await basededatos.collection('libros').doc(id).update(
    {
      'id': id,
      'author': author,
      'name': name,
      'year': year,
      'photo': photo,
      // 'email': email,
      // 'author': author,
    },
  );
}

Future<Map<String, dynamic>> getLibroPorID(String id) async {
  // List libros = [];

  CollectionReference usersReference = basededatos.collection('libros');

  QuerySnapshot queryUsers = await usersReference.get();

  for (var doc in queryUsers.docs) {
    if (doc.data()['id'] == id) {
      return doc.data();
    }
  }
  return null;
}

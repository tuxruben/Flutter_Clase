import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Empresa _facebook = new Empresa("Facebokk", "Mark Zuckerberg", 50000000);
  Empresa _google = new Empresa("Google", "Larry page", 80000000);
  Text nombre = new Text("Jose");
  @override
  void initState() {
    super.initState();
    print(_facebook.propietario);
    print(_facebook.nombre);
    print(_facebook.ingresoAnual);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clase',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clases'),
        ),
        body: Center(
          child: Container(
            child: Text(
              _google.propietario,
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}

class Empresa {
  String nombre;
  String propietario;
  int ingresoAnual;
  Empresa(String nombre, String propietario, int ingreso) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}

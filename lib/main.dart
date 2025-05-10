import 'package:flutter/material.dart';

void main() {
  runApp(AplicacionLogin1());
}

class AplicacionLogin1 extends StatefulWidget {
  const AplicacionLogin1({super.key});

  @override
  _EstadoLogin1 createState() => _EstadoLogin1();
}

class _EstadoLogin1 extends State<AplicacionLogin1> {
  TextEditingController controladorUsuario1 = TextEditingController();
  TextEditingController controladorClave1   = TextEditingController();

  String mensajeResultado1   = '';
  Color  colorResultado1     = Colors.black;

  String usuarioValido1      = 'Usuario123';
  String claveValida1        = 'Contra123';

  void validarIngreso1() {
    String usuario = controladorUsuario1.text;
    String clave   = controladorClave1.text;

    if (usuario.isEmpty && clave.isEmpty) {
      mensajeResultado1 = 'No ingresaste usuario ni contraseña';
      colorResultado1   = Colors.orange;
    }
    else if (usuario.isEmpty) {
      mensajeResultado1 = 'Falta ingresar el usuario';
      colorResultado1   = Colors.red;
    }
    else if (clave.isEmpty) {
      mensajeResultado1 = 'Falta ingresar la contraseña';
      colorResultado1   = Colors.red;
    }
    else if (usuario != usuarioValido1 || clave != claveValida1) {
      mensajeResultado1 = 'Usuario o contraseña incorrectos';
      colorResultado1   = Colors.red;
    }
    else {
      mensajeResultado1 = 'Acceso correcto';
      colorResultado1   = Colors.green;
    }

    setState(() {});  // Actualiza la pantalla
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Pantalla de logueo 001')),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controladorUsuario1,
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controladorClave1,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: UnderlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: validarIngreso1,
                child: Text('Ingresar'),
              ),
              SizedBox(height: 20),
              Text(
                mensajeResultado1,
                style: TextStyle(fontSize: 18, color: colorResultado1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
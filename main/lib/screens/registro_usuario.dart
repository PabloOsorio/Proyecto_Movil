import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<Registro> createState() => _Registro();
}

class _Registro extends State<Registro> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  static String correo = "";
  static String password = 'm';
  static String contacto = "1122334455";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme!.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Correo electrónico
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Correo electrónico',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'El correo electrónico es obligatorio';
                  }
                  return null;
                },
              ),
            // Contraseña
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'La contraseña es obligatoria';
                }
                return null;
              },
            ),

              // Contacto
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Numero de contacto',
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'El correo electrónico es obligatorio';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón "Siguiente"
                },
                child: Text('Siguiente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/screens/articulo.dart';
import 'package:main/screens/lista_articulos.dart';
import 'package:main/screens/usuario.dart';
import 'package:main/screens/registro_usuario.dart';

// ignore: camel_case_types
class Inicio_Home extends StatefulWidget {
  const Inicio_Home({super.key, required this.title});
  final String title;

  @override
  State<Inicio_Home> createState() => _Inicio_HomeState();
}

class _Inicio_HomeState extends State<Inicio_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme!.inversePrimary,
        title: const Text("Buscaste - Categoria Dama"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.face_2_outlined,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Registro(title: "Registro"),
                ),
              );
            },
            iconSize: 45,
          ),

          //AHORA EL SEGUNDO BOTON

          IconButton(
            iconSize: 45,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductosList(),
                    ));
              },
              icon: const Icon(Icons.shopify))
        ],
      ),
      body: _ColumnaProductos(), //esto debe poder precionarse
    );
  }
}

class _ColumnaProductos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: PerfilUsuario()),
      ],
    );
  }
}

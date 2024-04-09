import 'package:flutter/material.dart';
import 'package:main/screens/usuario.dart';
import 'package:main/screens/registro_usuario.dart';

// ignore: camel_case_types
class Inicio_Home extends StatefulWidget {
  const Inicio_Home({super.key,required this.title});
  final String title;

  @override
  State<Inicio_Home> createState() => _Inicio_HomeState();
}

class _Inicio_HomeState extends State<Inicio_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Theme.of(context).colorScheme!.inversePrimary,
        title: Text("Buscaste - Categoria Dama"),
        actions:  [
          IconButton(
            icon: Icon(
              Icons.face_2_outlined,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Registro(title: "Registro"),
                ),
              );

            },
          iconSize: 45,),
        ],
      ),
      body:_ColumnaProductos(),

    );
  }
}

class _ColumnaProductos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: Usuario()),
      
        ],

    );

  }
}
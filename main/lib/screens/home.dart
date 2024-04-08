import 'package:flutter/material.dart';
import 'package:main/screens/usuario.dart';

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
        backgroundColor: Colors.cyanAccent[200],
        title: Text("Buscaste - Categoria Dama"),
        actions: const [
          IconButton(onPressed: null, icon:Icon(
          Icons.face_2_outlined),
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
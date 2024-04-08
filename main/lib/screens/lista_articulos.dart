import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Producto_widget extends StatelessWidget {
  Producto producto;
  
  Producto_widget({super.key,required this.producto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: Column(
        children: [
          Text(producto.nombre, style: TextStyle(fontSize: 50),),
          Text(producto.imagen),
          Text(producto.descripcion)
        ],
      ),
    );
  }
}



class Contenedor_Productos extends StatelessWidget {
  final Producto producto;
  const Contenedor_Productos({super.key,required this.producto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Producto_widget(producto: producto),
    );
  }
}



class Producto {
  final String nombre;
  final String imagen;
  final String descripcion;

  Producto(this.nombre, this.imagen, this.descripcion);
}
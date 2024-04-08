import 'package:flutter/material.dart';
import 'package:main/screens/lista_articulos.dart';


class Usuario extends StatelessWidget {
  final List<Producto> productos = [
    Producto('Producto 1', "imagen Esperada 1", 'Descripción del producto 1'),
    Producto('Producto 2', "imagen esperada 2", "Descripción del producto 2"),
    Producto('Producto 1', "imagen Esperada 3", 'Descripción del producto 3'),
    Producto('Producto 2', "imagen esperada 4", "Descripción del producto 4"),
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) {
            return Contenedor_Productos(producto: productos[index]);
          },
           
        ),
      ),
    );
  }
}


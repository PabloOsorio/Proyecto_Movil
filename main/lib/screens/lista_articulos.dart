import 'package:flutter/material.dart';


class Producto {
  final String nombre;
  final String imagen;
  final String descripcion;

  Producto(this.nombre, this.imagen, this.descripcion);
}


//Este contiene los productos en CARD 
class Contenedor_Productos extends StatelessWidget {
  final Producto producto;
  const Contenedor_Productos({super.key,required this.producto});

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.cyanAccent,
      child: Padding(padding: EdgeInsets.all(10),
    child: Column(children: [
            Text(producto.nombre, style: TextStyle(fontSize: 20)),
            Image.asset(producto.imagen),
            Text(producto.descripcion),
          ],
          ),
          ),
    );
  }
}



List<Producto>lproductos=[Producto("Bolsa Gucci", "Imagen de la bolsa", "Bolsa sobrevalorada"),
Producto("Bufanda", "Imagen de la bufanda", "Para el frio"),
Producto("Galletas", "Imagen de las galletas", "Galletas")];




class ProductosList extends StatelessWidget {
  const ProductosList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todos los productos"),),
      body:Column(
        children: [
          SizedBox(
            height: 500,
            child: ListView.builder(
              
              itemCount: lproductos.length,
              itemBuilder: (context, index) {
                return Contenedor_Productos(producto:lproductos[index]);
            },),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:main/screens/subir_Articulo.dart';

class Articulo extends StatefulWidget {
  const Articulo({super.key, required this.title});


  final String title;

  @override
  State<Articulo> createState() => _Articulo();
}

class _Articulo extends State<Articulo> {

  @override
  Widget build(BuildContext context) {
    String titulo = "PELUCHE SPRINGTRAP";
    double precio = 255.89;
    String descripcion = "Peluche de springtrap de 30 x 30 cm, felpa, oficial";
    String ruta_foto = "https://m.media-amazon.com/images/I/71Vv3-pA3ML._AC_UF894,1000_QL80_.jpg";

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.network( ruta_foto,
                width: 200, // Ancho deseado de la imagen
                height: 200, // Alto deseado de la imagen
              ),
            ),
            Text(titulo),
            Text("Precio: $precio"),
            Text(descripcion),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Editar_Articulo(titulo, precio, "peluches", descripcion, ruta_foto,
                            title: "Articulo")));
              },
              child: Text('EDITAR'),
            ),

          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

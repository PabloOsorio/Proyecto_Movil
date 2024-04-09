import 'package:flutter/material.dart';
import 'package:main/screens/subir_Articulo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
                        builder: (context) => Articulo(titulo, precio, "peluches", descripcion, ruta_foto,
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

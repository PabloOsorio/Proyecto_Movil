import 'package:flutter/material.dart';

class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Mi perfil'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Foto de perfil
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://example.com/user.png'),
                ),

                // Nombre y correo
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Nombre de usuario',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'correo@ejemplo.com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                // Productos a la venta
                const Divider(),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Productos a la venta',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network('https://example.com/producto.png'),
                      title: const Text('Nombre del producto'),
                      subtitle: const Text('\$100'),
                      trailing: const Icon(Icons.arrow_forward),
                    );
                  },
                ),

                // Editar perfil
                const Divider(),
                ElevatedButton(
                  onPressed: () {
                    // Navegar a la pantalla de editar perfil
                  },
                  child: const Text('Editar perfil'),
                ),
              ],
            ),
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import '../modelos/lenguaje_programacion.dart';

class ListaLenguajes extends StatelessWidget {
  final List<LenguajeProgramacion> lenguajes;

  const ListaLenguajes({super.key, required this.lenguajes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lenguajes.length,
      itemBuilder: (context, index) {
        final lenguaje = lenguajes[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(lenguaje.urlImagen),
            backgroundColor: Colors.grey[200],
          ),
          title: Text(
            lenguaje.nombre,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            'Creado por ${lenguaje.creador} en ${lenguaje.anio}',
            style: TextStyle(color: Colors.grey[600]),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Seleccionaste: ${lenguaje.nombre}'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
        );
      },
    );
  }
}

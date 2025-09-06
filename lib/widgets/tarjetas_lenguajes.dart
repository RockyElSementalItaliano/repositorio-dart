import 'package:flutter/material.dart';
import '../modelos/lenguaje_programacion.dart';

class TarjetasLenguajes extends StatelessWidget {
  final List<LenguajeProgramacion> lenguajes;

  const TarjetasLenguajes({super.key, required this.lenguajes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.8,
        ),
        itemCount: lenguajes.length,
        itemBuilder: (context, index) {
          final lenguaje = lenguajes[index];
          return _buildTarjetaLenguaje(lenguaje, context);
        },
      ),
    );
  }

  Widget _buildTarjetaLenguaje(LenguajeProgramacion lenguaje, BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Tarjeta de ${lenguaje.nombre} presionada'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(lenguaje.urlImagen),
                  radius: 40,
                  backgroundColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 12),
              Text(
                lenguaje.nombre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '${lenguaje.anio} • ${lenguaje.creador}',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Text(
                  lenguaje.descripcion,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

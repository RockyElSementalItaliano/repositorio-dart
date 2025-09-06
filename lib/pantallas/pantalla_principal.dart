import 'package:flutter/material.dart';
import '../modelos/lenguaje_programacion.dart';
import '../widgets/lista_lenguajes.dart';
import '../widgets/tarjetas_lenguajes.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _vistaSeleccionada = 0; // 0: Lista, 1: Tarjetas
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _mostrarSnackBar(String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensaje),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Lenguajes de Programación'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _mostrarSnackBar('Búsqueda presionada'),
            tooltip: 'Buscar',
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () => _mostrarSnackBar('Favorito presionado'),
            tooltip: 'Favoritos',
          ),
        ],
      ),
      drawer: _buildDrawer(),
      body: _vistaSeleccionada == 0
          ? ListaLenguajes(lenguajes: lenguajes)
          : TarjetasLenguajes(lenguajes: lenguajes),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(
              'Menú de Navegación',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Ver Lista'),
            onTap: () {
              setState(() => _vistaSeleccionada = 0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_module),
            title: const Text('Ver Tarjetas'),
            onTap: () {
              setState(() => _vistaSeleccionada = 1);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

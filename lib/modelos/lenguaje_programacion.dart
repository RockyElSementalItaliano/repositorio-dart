class LenguajeProgramacion {
  final String nombre;
  final String descripcion;
  final String urlImagen;
  final int anio;
  final String creador;

  LenguajeProgramacion({
    required this.nombre,
    required this.descripcion,
    required this.urlImagen,
    required this.anio,
    required this.creador,
  });
}

final List<LenguajeProgramacion> lenguajes = [
  LenguajeProgramacion(
    nombre: 'Dart',
    descripcion: 'Lenguaje de programación optimizado para aplicaciones multiplataforma. Desarrollado por Google y usado en Flutter.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-dart-3521596-2945048.png',
    anio: 2011,
    creador: 'Google',
  ),
  LenguajeProgramacion(
    nombre: 'JavaScript',
    descripcion: 'Lenguaje de programación interpretado, dialecto del estándar ECMAScript.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-javascript-3630127-3031259.png',
    anio: 1995,
    creador: 'Brendan Eich',
  ),
  LenguajeProgramacion(
    nombre: 'Python',
    descripcion: 'Lenguaje de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-python-3521655-2945099.png',
    anio: 1991,
    creador: 'Guido van Rossum',
  ),
  LenguajeProgramacion(
    nombre: 'Java',
    descripcion: 'Lenguaje de programación de propósito general, orientado a objetos y concurrente.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-java-60-1174953.png',
    anio: 1995,
    creador: 'James Gosling',
  ),
  LenguajeProgramacion(
    nombre: 'C++',
    descripcion: 'Lenguaje de programación diseñado en 1979 por Bjarne Stroustrup.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-c-4-226082.png',
    anio: 1983,
    creador: 'Bjarne Stroustrup',
  ),
  LenguajeProgramacion(
    nombre: 'C#',
    descripcion: 'Lenguaje de programación multiparadigma desarrollado por Microsoft.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-c-sharp-1-1175241.png',
    anio: 2000,
    creador: 'Microsoft',
  ),
  LenguajeProgramacion(
    nombre: 'Swift',
    descripcion: 'Lenguaje de programación creado por Apple para desarrollar apps iOS y macOS.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-swift-15-458365.png',
    anio: 2014,
    creador: 'Apple',
  ),
  LenguajeProgramacion(
    nombre: 'Kotlin',
    descripcion: 'Lenguaje de programación moderno que compila a Java Bytecode y JavaScript.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-kotlin-1-283005.png',
    anio: 2011,
    creador: 'JetBrains',
  ),
  LenguajeProgramacion(
    nombre: 'Go',
    descripcion: 'Lenguaje de programación concurrente y compilado inspirado en la sintaxis de C.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-golang-1-283007.png',
    anio: 2009,
    creador: 'Google',
  ),
  LenguajeProgramacion(
    nombre: 'Rust',
    descripcion: 'Lenguaje de programación multiparadigma que se enfoca en seguridad y rendimiento.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-rust-2752108-2285005.png',
    anio: 2010,
    creador: 'Mozilla',
  ),
  LenguajeProgramacion(
    nombre: 'TypeScript',
    descripcion: 'Superset de JavaScript que añade tipos estáticos y objetos basados en clases.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-typescript-1-1175078.png',
    anio: 2012,
    creador: 'Microsoft',
  ),
  LenguajeProgramacion(
    nombre: 'PHP',
    descripcion: 'Lenguaje de programación de propósito general especialmente adecuado para desarrollo web.',
    urlImagen: 'https://cdn.iconscout.com/icon/free/png-256/free-php-1-1175277.png',
    anio: 1995,
    creador: 'Rasmus Lerdorf',
  ),
];

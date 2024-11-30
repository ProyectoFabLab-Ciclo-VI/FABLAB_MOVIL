class ModelosPredefinidoPost {
  final int? modelopredefinidoid;
  final String nombre;
  final String codigo;
  final String comentario;
  final double precio;
  final String imagen_1;
  final String imagen2;
  final String imagen3;
  final String imagen4;
  final int insumoid;

  ModelosPredefinidoPost({
     this.modelopredefinidoid,
    required this.nombre,
    required this.codigo,
    required this.comentario,
    required this.precio,
    required this.imagen_1,
    required this.imagen2,
    required this.imagen3,
    required this.imagen4,
    required this.insumoid,
  });

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'codigo': codigo,
      'comentario': comentario,
      'precio': precio,
      'imagen1': imagen_1,
      'imagen2': imagen2,
      'imagen3': imagen3,
      'imagen4': imagen4,
      'insumo_id': insumoid,
    };
  }
}

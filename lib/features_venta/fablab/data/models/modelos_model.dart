import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';

class ModeloPredefinidoModel extends ModelosPredefinido {
  ModeloPredefinidoModel(
      {required super.modelopredefinidoid,
      required super.nombre,
      required super.codigo,
      required super.comentario,
      required super.precio,
      required super.imagen_1,
      required super.imagen2,
      required super.imagen3,
      required super.imagen4,
      required super.insumoid});

  factory ModeloPredefinidoModel.fromJson(Map<String, dynamic> json) {
    return ModeloPredefinidoModel(
      modelopredefinidoid: json['modelo_predefinido_id'] as int,
      nombre: json['nombre'] ?? 'nombre no encontrado',
      codigo: json['codigo'] ?? 'codigo no encontrado',
      comentario: json['comentario'] ?? 'comentario no encontrado',
      precio: (json['precio'] as num).toDouble(),
      imagen_1: json['imagen1'] ?? 'imagen1 no encontrado',
      imagen2: json['imagen2'] ?? 'imagen2 no encontrado',
      imagen3: json['imagen3'] ?? 'imagen3 no encontrado',
      imagen4: json['imagen4'] ?? 'imagen4 no encontrado',
      insumoid: json['insumo_id'] ?? 1,
    );
  }
}

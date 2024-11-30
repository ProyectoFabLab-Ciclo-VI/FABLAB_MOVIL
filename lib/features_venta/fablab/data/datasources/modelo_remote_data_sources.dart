import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/post_modelos.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ModeloRemoteDataSources {
  final String baseUrl = 'http://192.168.1.105:8080/apimodelo-predefinido';

  Future<List<Map<String, dynamic>>> listModelosPredefinido() async {
    final response = await http.get(Uri.parse('$baseUrl/list'));

    if (response.statusCode == 200) {
      // Asegúrate de que decode retorne una lista de mapas
      final List<dynamic> decoded = json.decode(response.body);
      return decoded.cast<
          Map<String, dynamic>>(); // Convierte dinámicos a mapas específicos
    } else {
      throw Exception('Error al cargar los modelos predefinidos');
    }
  }

  Future<Map<String, dynamic>> getmodelopredefinido(
      int modelopredefinidoid) async {
    final response = await http.get(Uri.parse('$baseUrl/$modelopredefinidoid'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Error al cargar el modelo predefinido');
    }
  }

  Future<void> createModeloPredefinido(ModelosPredefinidoPost modelos) async {
    final response = await http.post(
      Uri.parse('$baseUrl/add'),  // URL donde realizarás el POST
      headers: {
        'Content-Type': 'application/json', // Asegúrate de que sea JSON
      },
      body: json.encode(modelos.toJson()), // Convierte el objeto en JSON
    );

    if (response.statusCode == 201) {
      // El modelo fue creado exitosamente
      print('Modelo predefinido creado exitosamente');
    } else {
      // Si la respuesta no es exitosa, lanza un error
      throw Exception('Error al crear el modelo predefinido');
    }
  }
}

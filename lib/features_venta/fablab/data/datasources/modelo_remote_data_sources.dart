import 'package:http/http.dart' as http;
import 'dart:convert';

class ModeloRemoteDataSources {
  final String baseUrl = 'http://192.168.1.105:8080/apimodelo-predefinido';

  Future<List<Map<String, dynamic>>> listModelosPredefinido() async {
    final response = await http.get(Uri.parse('$baseUrl/list'));

    if (response.statusCode == 200) {
      print("Respuesta cruda de la API: ${response.body}");
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
}

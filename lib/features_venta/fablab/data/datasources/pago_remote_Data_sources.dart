import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pago.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PagoDataSources {
  final String baseUrl = 'http://192.168.1.105:8080/apipago';

  Future<void> createPago(PagoEntity pago) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/add/pago'), // URL donde realizarás el POST
        headers: {
          'Content-Type': 'application/json', // Asegúrate de que sea JSON
        },
        body: json.encode(pago.toJson()), // Convierte el objeto en JSON
      );

      // Verificar el código de estado
      if (response.statusCode == 201) {
        print('Pago predefinido creado exitosamente');
      } else {
        // Si la respuesta no es exitosa, imprimir detalles del error
        print('Error: ${response.statusCode}');
        print('Response body: ${response.body}');
        throw Exception('Error al crear el Pago predefinido');
      }
    } catch (e) {
      // Capturar cualquier error en la solicitud y mostrarlo
      print('Excepción: $e');
      throw Exception('Error al hacer la solicitud: $e');
    }
  }
}

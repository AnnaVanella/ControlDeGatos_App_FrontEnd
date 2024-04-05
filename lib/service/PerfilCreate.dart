import 'dart:convert';
import 'package:flutter_hegga_controldegastos_frontend/model/user.dart';
import 'package:flutter_hegga_controldegastos_frontend/model/userError.dart';
import 'package:http/http.dart' as http;

class PerfilService {
  Future<Object> createPerfil(String nombre_apellido, String fecha_nac,
      String direccion, String contacto) async {
    //se define el mapa
    final Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define la url
    final Uri url = Uri.parse('https://controldegatos-backend-dev-aphx.1.us-1.fl0.io/api/profile');

    //se define cuerpo del body
    final String body = json.encode({
      "data": {
        "nombre_apellido": nombre_apellido,
        "fecha_nac": fecha_nac,
        "direccion": direccion,
        "contacto": contacto
      }
    });

    try {
      final response = await http.post(url, headers: headers, body: body);

      final data = json.decode(response.body);

      if (response.statusCode == 200) {
        // Asegúrate de que la clase User tenga un método estático fromJson que acepte un mapa y retorne una instancia de User
        return User.fromJson(data);
      } else {
        // Asegúrate de que la clase ErrorUser tenga un método estático fromJson que acepte un mapa y retorne una instancia de ErrorUser
        return ErrorUser.fromJson(data);
      }
    } catch (e) {
      // En caso de cualquier error de red o de decodificación JSON, retorna un ErrorUser con un mensaje de error genérico
      // Ajusta la creación de ErrorUser según tu implementación
      return ErrorUser(status: '500', message: 'Error de red');
    }
  }
}

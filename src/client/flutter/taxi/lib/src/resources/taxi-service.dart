import '../models/taxi-docalcul-request.dart';
import '../models/taxi-docalcul-response.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TaxiService {

  TaxiDoCalculResponse response;

  /**
   * Prepare request using Future
   */
  Future<TaxiDoCalculResponse> fetchResponse(String jsonBody) async {
    final response =
    await http.post('http://liburgence.aidesnsoft.fr/Calculs/DoCalcul', body: jsonBody);

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      return TaxiDoCalculResponse.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception("Erreur d'execution DoCalcul");
    }
  }

  /**
   * Call this method to send request
   */
  Future<TaxiDoCalculResponse> doCalculs(TaxiDoCalculRequest request) {
    String jsonBody = jsonEncode(request);
    print('Envoi requête: ' + jsonBody.toString());
    return fetchResponse(jsonBody);
  }
}

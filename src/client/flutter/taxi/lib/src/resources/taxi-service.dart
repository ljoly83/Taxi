import '../models/taxi-docalcul-request.dart';
import '../models/taxi-docalcul-response.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'app-config.dart';
import 'package:url_launcher/url_launcher.dart';

class TaxiService {

  TaxiDoCalculResponse response;

  /**
   * Prepare request using Future
   */
  Future<TaxiDoCalculResponse> fetchResponse(String jsonBody) async {
    Map<String, String> _headers = {
    "Content-Type": "application/json",
    "Accept": "application/json"
    };
    final response =
    await http.post('$CALCULS_BASE_URL/DoCalcul',headers: _headers, body: jsonBody);

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      print('Service call to DoCalcul: success');
      return TaxiDoCalculResponse.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      //_launchURL(jsonBody);
      throw Exception("Service call to DoCalcul: error");

    }
  }

  /**
   * Call this method to send request
   */
  Future<TaxiDoCalculResponse> doCalculs(TaxiDoCalculRequest request) {
    String jsonBody = jsonEncode(request);
    print('Envoi requête doCalculs: ' + jsonBody.toString());
    return fetchResponse(jsonBody);
  }
}

/**
 * To debug
 * json body is too long to print in console
 */
_launchURL(jsonBody) async {
  String destMail = REGISTRATION_RECEVE_MAIL;
  String titreMail = 'Contenu du post json';
  String contenuEmail = jsonBody;

  var url = 'mailto:$destMail?subject=$titreMail&body=$contenuEmail';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
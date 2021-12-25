import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Api {
 static Future<dynamic> post({params,}) async {
    var url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    var response = await http.post(url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'service_id': 'service_xx2ylx7',
          'template_id': 'template_nazbk07',
          'user_id': 'user_ZiCHqKltGQliFmiVNDB2H',
          'template_params': params,
        }));
    log('Response status: ${response.statusCode}');
    log('Response status: ${response.body}');
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}

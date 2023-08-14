import 'dart:convert';
import 'package:adviceapp/models/advice_model.dart';
import 'package:http/http.dart' as http;

Future<Advice> getAdvice() async {
  const url = 'https://api.adviceslip.com/advice';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return Advice.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Nothing was found');
  }
}
import 'dart:convert';

import 'package:bmw_quiz_flutter/quiz/infra/datasources/dtos/question_response.dart';
import 'package:bmw_quiz_flutter/quiz/infra/datasources/dtos/result_request.dart';
import 'package:bmw_quiz_flutter/quiz/infra/datasources/dtos/result_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class QuizApi {
  var baseUrl = 'https://10.0.2.2:5001/api/Quiz';

  Future<List<QuestionResponse>> getQuestionsAsync() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);

    var decodedBody = jsonDecode(response.body) as List;

    return decodedBody.map((item) => QuestionResponse.fromMap(item)).toList();
  }

  Future<ResultResponse> getResultAsync(ResultRequest request) async {
    var url = Uri.parse(baseUrl);
    var response = await http.post(
      url,
      body: request.toJson(),
      headers: {"Content-Type": "application/json"},
    );

    var json = jsonDecode(response.body);

    debugPrint(json.toString());

    return ResultResponse.fromMap(json);
  }
}

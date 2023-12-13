import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:shoppy/models/posts/posts.dart';
import 'package:shoppy/services/api_constants/api_constants.dart';

class ApiServices {
  Future<List<Products>> getPosts() async {
    final response = await http.get(
      Uri.https(ApiConstants.baseUrl, ApiConstants.endpointPosts),
    );
    if (response.statusCode == 200) {
      final responseData = List.from(jsonDecode(response.body));
      return responseData.map((data) => Products.fromJson(data)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final apiServiceProvider = Provider<ApiServices>((ref) => ApiServices());

import 'dart:convert';
import '../../constant/constant.dart';
import 'package:http/http.dart' as http;

class Token {
  final _client = http.Client();

  final String owner;

  Token({required this.owner});

  Future<http.Response> _fetch(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, String>? parameters,
  }) async {
    final uri = Uri.parse("${Constants.baseurl}/$endpoint")
        .replace(queryParameters: parameters);
    return _client.get(
      uri,
      headers: {
        "accept": "application/json",
        "X-API-Key": Constants.apiKey,
        if (headers != null) ...headers,
      },
    );
  }

  getTokens({required EvmChain chain}) async {
    final response =
        await _fetch("$owner/erc20", parameters: {"chain": chain.code});
    final resData = jsonDecode(response.body);

    return resData;
  }

  getTokenBalance({required String token, required EvmChain chain}) async {
    final response = await _fetch("$owner/erc20", parameters: {
      "chain": chain.code,
      "token_addresses[]": token,
    });
    final List resData = jsonDecode(response.body);
    return resData;
  }
}

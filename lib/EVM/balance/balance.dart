import 'dart:convert';
import '../../constant/constant.dart';
import 'package:http/http.dart' as http;

class Balance {
  final _client = http.Client();

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

  Future<String?> getNativeBalance({
    required EvmChain chain,
    required String address,
  }) async {
    const int divideby = 1000000000000000000;
    final String chainName = chain.code;
    try {
      final response =
          await _fetch("$address/balance", parameters: {"chain": chainName});
      final resData = jsonDecode(response.body);
      Constants.logger.d(resData);
      if (response.statusCode != 200) {
        Constants.logger.w(resData["message"]);
        throw resData["message"];
      } else {
        return (double.parse(resData["balance"].toString()) / divideby)
            .toStringAsFixed(8);
      }
    } catch (error) {
      Constants.logger.w(error);
      return null;
    }
  }

  Future<List?> getNativeBalanceMulti({
    required EvmChain chain,
    required List<String> addresses,
  }) async {
    final String chainName = chain.code;
    final Map<String, String> parameters = {
      "chain": chainName,
      for (var address in addresses) "wallet_addresses": address,
    };
    try {
      final response = await _fetch("wallets/balances", parameters: parameters);
      final resData = jsonDecode(response.body);
      Constants.logger.d(resData);
      if (response.statusCode != 200) {
        Constants.logger.w(resData["message"]);
        throw resData["message"];
      } else {
        return resData[0]["wallet_balances"];
      }
    } catch (error) {
      Constants.logger.w(error);
      return null;
    }
  }
}

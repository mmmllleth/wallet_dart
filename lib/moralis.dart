library moralis;

import 'EVM/evmapi.dart';
import 'EVM/token/token.dart';
import 'constant/constant.dart';

/// Moralis
class Moralis {
  late final EvmApi evmApi;

  late final Token token;

  Moralis({EvmApi? evmApi})
      : evmApi = evmApi ?? EvmApi(),
        token = Token();

  static void setApiKey({required String apikey}) {
    Constants.apiKey = apikey;
  }
}

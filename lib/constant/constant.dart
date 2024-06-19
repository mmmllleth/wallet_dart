import 'package:logger/logger.dart';

class Constants {
  static final Logger logger = Logger();
  static String apiKey = '';
  static const String baseurl = 'https://deep-index.moralis.io/api/v2.2';
}

enum EvmChain {
  ethereum('ethereum', 1),
  ropsten('ropsten', 3),
  rinkeby('rinkeby', 4),
  goerli('goerli', 5),
  kovan('kovan', 69),
  sepolia('sepolia', 11155111),
  polygon('polygon', 137),
  mumbai('mumbai', 80001),
  bsc('bsc', 56),
  bsctestnet('bsc testnet', 97),
  avalanche('avalanche', 43114),
  fantom('fantom', 250),
  cronos('cronos', 25),
  palm('palm', 11297108109),
  arbitrum('42161', 1);

  /// morails chain name
  final String code;

  /// chain ID
  final int id;

  const EvmChain(this.code, this.id);
}

import 'package:logger/logger.dart';

class Constants {
  static final Logger logger = Logger();
  static String apiKey = '';
  static const String baseurl = 'https://deep-index.moralis.io/api/v2';
}

enum EvmChain {
  ethereum('ethereum', 1),
  ropsten('ropsten', 1),
  rinkeby('rinkeby', 1),
  goerli('goerli', 1),
  kovan('kovan', 1),
  sepolia('sepolia', 1),
  polygon('polygon', 1),
  mumbai('mumbai', 1),
  bsc('bsc', 56),
  bsctestnet('bsc testnet', 97),
  avalanche('avalanche', 1),
  fantom('fantom', 1),
  cronos('cronos', 1),
  palm('palm', 1),
  arbitrum('arbitrum', 1);

  /// morails chain name
  final String code;

  /// chain ID
  final int id;

  const EvmChain(this.code, this.id);
}

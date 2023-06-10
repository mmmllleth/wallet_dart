## Moralis
Introducing Moralis Package, a powerful Flutter package designed to simplify Web3 integration. With its intuitive API and robust features from moralis, Moralis package empowers developers to get access to blockchain data. Whether you're building Dapps or not, this package will save you time and effort by providing ready-to-use components and streamlined workflows. Stay ahead of the game with moralis, and unlock new possibilities in your Flutter projects.

## Features

We are working on implementing all moralis features

## Getting started

Create account at [moralis](https://moralis.io/)
Get your Web3 API key from the Moralis dashboard by going to one of your existing project > Settings > Secrets > Copy one of your secrets.

# keep your api key safe
Your API key is linked to your private account. Keep your keys safe by following these best practices:

1. Provide access only to those who need it
2. Keep the key out of any version control system you might be using
3. Use a password manager or secret management service to control access to your key
4. Don't embed your secret API key in web applications or in other places where the key could be easily obtained

## Usage

```dart
  // You need to set Apikey to use any of this package functions
  Moralis.setApiKey(apikey: 'xxxxxxxxxxxxxxxxxxxxx');

  //Get a wallet balance
  String? nativeBalance = await Moralis.evmApi.balance.getNativeBalance(
      chain: EvmChain.bsc, address: "0x2ed3dd3dede6fg77edfgd63df53df65");
  print(nativeBalance); // '0.5392'

  //Get multi wallet balance
  List? balances = await Moralis.evmApi.balance.getNativeBalanceMulti(
      chain: EvmChain.bsc,
      addresses: [
        "0x2ed3dd3dede6fg77edfgd63df53df65",
        "0x2ed3dd3dede6fg77edfgd63df53df65"
      ]);
  print(balances); 
  // [
  //   {
  //     "address": "0xa2e92ff56bee6ece711ecb976a988d216265bab5",
  //     "balance": "539274471165071484",
  //     "balance_formatted": "0.539274471165071484"
  //   },
  //   {
  //     "address": "0xa2e92ff56bee6ece711ecb976a988d216265bab5",
  //     "balance": "539274471165071484",
  //     "balance_formatted": "0.539274471165071484"
  //   }
  // ];
```

## Additional information


<a href="[https://example.com](https://flutterwave.com/donate/52fmexoynge8)"><img src="https://example.com/image.png" alt="Image Alt Text"></a>

[Buy me a coffee](https://flutterwave.com/donate/52fmexoynge8)


Support the development of this package and help us continue delivering high-quality solutions for the Flutter community! Your generous contributions enable us to invest more time and resources into enhancing, adding new features, and providing timely updates. By [donating](https://flutterwave.com/donate/52fmexoynge8), you become a valuable part of our journey towards creating an even better package for developers like you. Together, let's shape the future of Flutter development.


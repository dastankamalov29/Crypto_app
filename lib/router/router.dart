import 'package:crypto_app/crypto_coin/view/crypto_coin_screen.dart';
import 'package:crypto_app/pages/CryptoListScreen.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};

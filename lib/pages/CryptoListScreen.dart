import 'package:crypto_app/repositories/crypto_coins/crypto_coin_repository.dart';
import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:crypto_app/widgets/crypto_coin_tile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;
  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: const Text(
          "Crypto_App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(child: CircularProgressIndicator ())
          : Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: _cryptoCoinsList!.length,
                itemBuilder: (context, index) {
                  final coin = _cryptoCoinsList![index];
                  return CryptoCoinTile(coin: coin);
                },
              ),
            ),
 
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<CryptoCoinRepository>().getCoinsList();
    setState(() {});
  }
}

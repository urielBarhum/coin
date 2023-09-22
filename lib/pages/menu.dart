import 'package:flutter/material.dart';
import 'package:frontend/services//api_service.dart';
import 'package:frontend/models/coin.dart';
import 'package:frontend/widget/one_coin.dart';

class CoinListPage extends StatefulWidget {
  @override
  _CoinListPageState createState() => _CoinListPageState();
}

class _CoinListPageState extends State<CoinListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin List'),
      ),
      body: FutureBuilder<List<Coin>>(
        future: ApiService.getApi().getCoins(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Text('No data available.');
          } else {
            final coins = snapshot.data!;
            return ListView.builder(
              itemCount: coins.length,
              itemBuilder: (context, index) {
                final coin = coins[index];
                return OneCoin(myCoin: coin);
              },
            );
          }
        },
      ),
    );
  }
}

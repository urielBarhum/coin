import 'package:flutter/material.dart';
import 'package:frontend/models/coin.dart';

class SingleCoin extends StatelessWidget {
  final Coin myCoin;

  const SingleCoin({Key? key, required this.myCoin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myCoin.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text(
                      'ID:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(myCoin.id),
                  ),
                  ListTile(
                    leading: Icon(Icons.label),
                    title: Text(
                      'Name:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(myCoin.name),
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text(
                      'Price:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('\$${myCoin.price.toStringAsFixed(2)}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_downward),
                    title: Text(
                      'Low:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('\$${myCoin.low.toStringAsFixed(2)}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_upward),
                    title: Text(
                      'High:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('\$${myCoin.high.toStringAsFixed(2)}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text(
                      'Open Market:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('\$${myCoin.openMarket.toStringAsFixed(2)}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.event),
                    title: Text(
                      'Close Market:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('\$${myCoin.closeMarket.toStringAsFixed(2)}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.trending_up),
                    title: Text(
                      'Trending:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(myCoin.trending ? 'Yes' : 'No'),
                  ),
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text(
                      'Details:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(myCoin.details),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

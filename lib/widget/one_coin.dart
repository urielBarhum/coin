import 'package:flutter/material.dart';
import 'package:frontend/models/coin.dart';
import 'package:frontend/pages/oneCoin.dart';

class OneCoin extends StatelessWidget {
  final Coin myCoin;
  const OneCoin({super.key, required this.myCoin});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.black, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  myCoin.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  myCoin.details,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '\$${myCoin.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the MoreDetailsPage with the selected coin
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleCoin(myCoin: myCoin),
                      ),
                    );
                  },
                  child: Text("More Details"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

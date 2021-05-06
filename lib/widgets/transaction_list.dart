import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  TransactionList(this.userTransactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  )),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'Rs.' + userTransactions[index].amount.toStringAsFixed(2),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.purple)),
                ),
                Column(
                  children: [
                    Text(
                      userTransactions[index].title,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMd().format(userTransactions[index].date),
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                )
              ],
            ),
          );
        },
        itemCount: userTransactions.length,
      ),
    );
  }
}

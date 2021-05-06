import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'T1', title: 'New Shoes', amount: 1500, date: DateTime.now()),
    Transaction(
        id: 'T2', title: 'New Watch', amount: 2500, date: DateTime.now())
  ];
  void _addNewTransaction(String title, double amount) {
    final Tx = Transaction(
        amount: amount,
        title: title,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransactions.add(Tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}

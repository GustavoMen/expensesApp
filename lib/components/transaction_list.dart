import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({required this.transactions, super.key});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          final e = transactions[index];
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "R\$ ${e.value.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      e.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat('d MMM y').format(e.date),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

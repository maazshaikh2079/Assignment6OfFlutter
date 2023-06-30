// ignore_for_file: prefer_const_constructors
import 'package:flutter_practice/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      //shape: CircleBorder(),
      child: GridTile(
        header: Container(
          color: Colors.black,
          child: Center(
            child: Text(
              item.name,
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          ),
        ),
        key: Key(item.name),
        footer: Container(
          color: Colors.amber,
          child: Text(
            "\$${item.price}",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        child: Image.network(item.image),
      ),
    );
  }
}

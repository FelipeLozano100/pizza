import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'New Orleans Pizza',
          style: TextStyle(
            color: Colors.brown,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.brown,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _PizzaDetails(),
          ),
          Expanded(
            child: Container(color: Colors.red),
          )
        ],
      ),
    ));
  }
}

class _PizzaDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Image.asset('assets/part1/dish.png'),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/part1/pizza-1.png'),
              ),
            ],
          ),
        ),
        Text(
          '\$15',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
      ],
    );
  }
}

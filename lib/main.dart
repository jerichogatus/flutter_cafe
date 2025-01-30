import 'package:flutter/material.dart';
import 'package:flutter_restaurant/restaurant_app.dart';
import 'restaurant_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite Fast Foods',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(0, 179, 94, 55)),
        useMaterial3: true,
      ),
      home: const RestaurantList(),
    );
  }
}

class RestaurantList extends StatefulWidget {
  const RestaurantList({super.key});

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  List<Restaurant> restaurants = [
    Restaurant(
      name: 'Here Cafe',
      location: 'Mabalacat',
      notes: 'A spacious and trendy cafe, known for its great ambiance and variety of coffee and food options.',
    ),
    Restaurant(
      name: 'Los Komunidad Coffee Shop',
      location: 'Angeles City',
      notes: 'A small, locally loved coffee shop offering a cozy environment for customers to unwind with their coffee.',
    ),
    Restaurant(
      name: 'Primero',
      location: 'San Fernando',
      notes: 'Known for its locally sourced coffee beans, this coffee shop also serves light bites, making it a great place to relax.',
    ),
    Restaurant(
      name: 'Preciso Coffee Shop',
      location: 'Angeles City',
      notes: 'A charming place with a focus on premium coffee blends and pastries, offering a cozy and inviting atmosphere.',
    ),
    Restaurant(
      name: 'Cefe Aadi',
      location: 'San Fernando',
      notes: 'A modern cafe known for its excellent coffee offerings, often highlighted by its calm and cozy ambiance.',
    ),
    Restaurant(
      name: 'Paya St. Coffee',
      location: 'San Fernando',
      notes: 'A trendy street with several coffee shops, known for a mix of local and international coffee spots that attract coffee lovers.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite Cafes',
          style: TextStyle(color: Colors.white, fontFamily: 'CoffeeBean'),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: const Color(0xFFDBC1AC),
      body: ListView(
        children: restaurants.map((restaurant) => RestaurantCard(restaurant: restaurant)).toList(),
      ),
    );
  }
}

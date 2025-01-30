import 'package:flutter/material.dart';
import 'package:flutter_restaurant/restaurant_app.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantCard({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: const Color(0xFFDBBBAE),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/coffee.jpg'),
                  radius: 30.0,
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant.name,
                        style: const TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54, 
                          fontFamily: 'CoffeeBean', 
                        ),
                      ),
                      Text(
                        restaurant.location ?? 'Unknown location',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white60, 
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.star_border, color: Colors.yellow),
                  onPressed: () {
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              restaurant.notes,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black45,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

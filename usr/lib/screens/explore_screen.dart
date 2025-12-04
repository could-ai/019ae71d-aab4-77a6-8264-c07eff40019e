import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  final List<Map<String, dynamic>> _categories = const [
    {'name': 'Electronics', 'icon': Icons.devices, 'color': Colors.blue},
    {'name': 'Fashion', 'icon': Icons.checkroom, 'color': Colors.pink},
    {'name': 'Home & Garden', 'icon': Icons.home, 'color': Colors.green},
    {'name': 'Sports', 'icon': Icons.sports_basketball, 'color': Colors.orange},
    {'name': 'Books', 'icon': Icons.menu_book, 'color': Colors.brown},
    {'name': 'Music', 'icon': Icons.music_note, 'color': Colors.purple},
    {'name': 'Vehicles', 'icon': Icons.directions_car, 'color': Colors.red},
    {'name': 'Toys', 'icon': Icons.toys, 'color': Colors.yellow},
    {'name': 'Services', 'icon': Icons.handyman, 'color': Colors.grey},
    {'name': 'Other', 'icon': Icons.more_horiz, 'color': Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: SearchBar(
              hintText: 'Search for items...',
              leading: const Icon(Icons.search),
              onTap: () {},
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.5,
            ),
            itemCount: _categories.length,
            itemBuilder: (context, index) {
              final category = _categories[index];
              return Card(
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    // Navigate to category results
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        category['icon'],
                        size: 32,
                        color: category['color'],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        category['name'],
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          const Text(
            'Trending Now',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // Placeholder for trending items
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(child: Text('Item ${index + 1}')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

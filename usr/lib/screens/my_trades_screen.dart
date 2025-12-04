import 'package:flutter/material.dart';

class MyTradesScreen extends StatelessWidget {
  const MyTradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Trades'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Received Offers'),
              Tab(text: 'Sent Offers'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildReceivedOffersList(context),
            _buildSentOffersList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildReceivedOffersList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=trader'),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Trader Joe',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Pending',
                        style: TextStyle(color: Colors.orange[800], fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text('Wants to trade their:', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 4),
                const Text(
                  'Vintage Vinyl Collection',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                const Text('For your:', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 4),
                const Text(
                  'Sony Headphones',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Decline'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: FilledButton(
                        onPressed: () {},
                        child: const Text('Accept'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSentOffersList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            title: const Text('Offer for: Mountain Bike'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                const Text('You offered: Smart Watch'),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text('Sent 2 days ago', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                  ],
                ),
              ],
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
        );
      },
    );
  }
}

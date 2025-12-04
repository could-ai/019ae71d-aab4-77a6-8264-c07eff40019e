import 'package:couldai_user_app/models/item.dart';

class MockData {
  static final List<Item> items = [
    Item(
      id: '1',
      title: 'Vintage Film Camera',
      description: 'Canon AE-1 in great condition. Comes with 50mm lens. Works perfectly.',
      imageUrl: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ownerName: 'Alice Photographer',
      ownerAvatar: 'https://i.pravatar.cc/150?u=alice',
      lookingFor: 'Guitar or Musical Instruments',
      postedAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Item(
      id: '2',
      title: 'Mountain Bike',
      description: 'Trek Marlin 5. Used for one season. Good tires.',
      imageUrl: 'https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ownerName: 'Bob Biker',
      ownerAvatar: 'https://i.pravatar.cc/150?u=bob',
      lookingFor: 'Gaming Console (PS5/Xbox)',
      postedAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Item(
      id: '3',
      title: 'Gaming Laptop',
      description: 'Dell G5 15. i7 Processor, GTX 1660Ti. Needs a new battery but works plugged in.',
      imageUrl: 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ownerName: 'Charlie Gamer',
      ownerAvatar: 'https://i.pravatar.cc/150?u=charlie',
      lookingFor: 'High-end Smartphone or Tablet',
      postedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Item(
      id: '4',
      title: 'Electric Guitar',
      description: 'Fender Stratocaster copy. Blue finish. Comes with soft case.',
      imageUrl: 'https://images.unsplash.com/photo-1550985543-f47f38aee65d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ownerName: 'Dave Musician',
      ownerAvatar: 'https://i.pravatar.cc/150?u=dave',
      lookingFor: 'Camera or Photography Gear',
      postedAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Item(
      id: '5',
      title: 'Stack of Books',
      description: 'Collection of sci-fi novels. Asimov, Herbert, PKD.',
      imageUrl: 'https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ownerName: 'Eve Reader',
      ownerAvatar: 'https://i.pravatar.cc/150?u=eve',
      lookingFor: 'Board Games or Puzzles',
      postedAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),
  ];
}

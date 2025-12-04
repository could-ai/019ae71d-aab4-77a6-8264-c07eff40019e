class Item {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String ownerName;
  final String ownerAvatar;
  final String lookingFor;
  final DateTime postedAt;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ownerName,
    required this.ownerAvatar,
    required this.lookingFor,
    required this.postedAt,
  });
}

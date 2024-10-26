
part of '_index.dart';

class Profile {
  final String id;
  final String name;
  final String imageUrl;
  Profile({
    this.id = '',
    this.name = '',
    this.imageUrl = '',
  });

  Profile copyWith({
    String? id,
    String? name,
    String? imageUrl,
  }) {
    return Profile(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'image_url': imageUrl});
  
    return result;
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      imageUrl: map['image_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) => Profile.fromMap(json.decode(source));

  @override
  String toString() => 'Profile(id: $id, name: $name, imageUrl: $imageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Profile &&
      other.id == id &&
      other.name == name &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ imageUrl.hashCode;
}

class Topic {
  final String id, name;

  Topic({required this.id, required this.name});

  @override
  String toString() {
    print("Topic(id: $id, name: $name)");
    return super.toString();
  }
}

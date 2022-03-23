

class Category {
  String id;
  String name;
  int grade;
  int currentAmount;
  int targetAmount;
  Category? category;
  Null investments;

  Category({
    required this.id,
    required this.name,
    required this.grade,
    required this.currentAmount,
    required this.targetAmount,
    required this.category,
    this.investments,
  });
}

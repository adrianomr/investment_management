class CategoryDto {
  String id;
  String name;
  int grade;
  int currentAmount;
  int targetAmount;
  CategoryDto? category;
  Null investments;

  CategoryDto({
    required this.id,
    required this.name,
    required this.grade,
    required this.currentAmount,
    required this.targetAmount,
    required this.category,
    this.investments,
  });

  @override
  String toString() {
    return 'CategoryDto{id: $id, name: $name, grade: $grade, currentAmount: $currentAmount, targetAmount: $targetAmount, category: $category, investments: $investments}';
  }
}

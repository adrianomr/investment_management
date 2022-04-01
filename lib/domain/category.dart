

class Category {
  String id;
  String name;
  double grade;
  double currentAmount;
  double targetAmount;
  double balance;
  double percentageBalance;
  Category? category;
  Null investments;

  Category({
    required this.id,
    required this.name,
    required this.grade,
    required this.currentAmount,
    required this.targetAmount,
    required this.balance,
    required this.percentageBalance,
    required this.category,
    this.investments,
  });
}

import 'package:investment_management/domain/category.dart';

abstract class CategoryGateway {
  Future<List<Category>> find();

}

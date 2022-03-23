import 'package:investment_management/framework/rest/dto/response_dto.dart';

class CategoryDto {
  String? id;
  String? name;
  int? grade;
  int? currentAmount;
  int? targetAmount;
  CategoryDto? category;
  Null? investments;

  CategoryDto(
      {this.id,
      this.name,
      this.grade,
      this.currentAmount,
      this.targetAmount,
      this.category,
      this.investments});

  CategoryDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    grade = json['grade'];
    currentAmount = json['currentAmount'];
    targetAmount = json['targetAmount'];
    category = json['category'];
    investments = json['investments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['grade'] = this.grade;
    data['currentAmount'] = this.currentAmount;
    data['targetAmount'] = this.targetAmount;
    data['category'] = this.category;
    data['investments'] = this.investments;
    return data;
  }

  static List<CategoryDto> fromResponse(ResponseDto responseDto) {
    List<dynamic> data = responseDto.data["data"];
    return data
        .map((category) => CategoryDto.fromJson(category))
        .toList();
  }
}

import 'package:investment_management/framework/rest/dto/response_dto.dart';
import 'package:investment_management/util/double_util.dart';

class CategoryDto {
  String? id;
  String? name;
  double? grade;
  double? currentAmount;
  double? targetAmount;
  double? balance;
  double? percentageBalance;
  CategoryDto? category;
  Null? investments;

  CategoryDto(
      {this.id,
      this.name,
      this.grade,
      this.currentAmount,
      this.targetAmount,
      this.balance,
      this.percentageBalance,
      this.category,
      this.investments});

  CategoryDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    grade = DoubleUtil.fromDynamyc(json['grade']);
    currentAmount = DoubleUtil.fromDynamyc(json['currentAmount']);
    targetAmount = DoubleUtil.fromDynamyc(json['targetAmount']);
    balance = DoubleUtil.fromDynamyc(json['balance']);
    percentageBalance = DoubleUtil.fromDynamyc(json['percentageBalance']);
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
    data['balance'] = this.balance;
    data['percentageBalance'] = this.percentageBalance;
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

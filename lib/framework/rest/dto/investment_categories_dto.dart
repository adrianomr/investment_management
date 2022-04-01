import 'package:investment_management/framework/rest/dto/category_dto.dart';
import 'package:investment_management/framework/rest/dto/response_dto.dart';
import 'package:investment_management/util/double_util.dart';

class InvestmentCategoriesDto {
  double? totalAmount;
  double? investedAmount;
  double? balance;
  double? percentageBalance;
  List<CategoryDto>? categories;

  InvestmentCategoriesDto({
    this.totalAmount,
    this.investedAmount,
    this.balance,
    this.percentageBalance,
    this.categories,
  });

  InvestmentCategoriesDto.fromJson(Map<String, dynamic> json) {
    totalAmount = DoubleUtil.fromDynamyc(json['totalAmount']);
    investedAmount = DoubleUtil.fromDynamyc(json['investedAmount']);
    balance = DoubleUtil.fromDynamyc(json['balance']);
    percentageBalance = DoubleUtil.fromDynamyc(json['percentageBalance']);
    List<dynamic> categoriesDynamic = json['categories'];
    categories =
        categoriesDynamic.map((json) => CategoryDto.fromJson(json)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalAmount'] = this.totalAmount;
    data['investedAmount'] = this.investedAmount;
    data['balance'] = this.balance;
    data['percentageBalance'] = this.percentageBalance;
    if (this.categories == null) {
      data['categories'] = [];
    } else {
      data['categories'] =
          this.categories!.map((category) => category.toJson()).toList();
    }
    return data;
  }

  static InvestmentCategoriesDto fromResponse(ResponseDto responseDto) {
    return InvestmentCategoriesDto.fromJson(responseDto.data["data"]);
  }
}

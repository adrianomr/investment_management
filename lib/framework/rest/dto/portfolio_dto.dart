import 'package:investment_management/framework/rest/dto/response_dto.dart';

class PortfolioDto {
  int id;
  double investedAmount;
  double currentAmount;
  double balance;

  PortfolioDto({required this.id,
    required this.investedAmount,
    required this.currentAmount,
    required this.balance});

  static PortfolioDto fromResponse(ResponseDto reponse) {
    return PortfolioDto(id: reponse.data['id'],
        investedAmount: reponse.data['investedAmount'],
        currentAmount: reponse.data['currentAmount'],
        balance: reponse.data['balance']);
  }
}

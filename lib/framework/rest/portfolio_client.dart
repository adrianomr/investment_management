import 'dto/portfolio_dto.dart';

abstract class PortfolioClient {
  Future<PortfolioDto> find();
}

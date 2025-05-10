import 'package:pizza_repository/src/models/models.dart';

abstract class PizzaRepository {
  Future<List<Pizza>> get pizzas;
}
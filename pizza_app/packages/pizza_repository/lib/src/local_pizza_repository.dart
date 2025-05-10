import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pizza_repository/pizza_repository.dart';

class LocalPizzaRepository extends PizzaRepository {
  @override
  Future<List<Pizza>> get pizzas async {
    List<Pizza> pizzaList = <Pizza>[];

    String jsonData = await rootBundle.loadString('assets/pizzaData.json');

    final List<dynamic> pizzaMaps = jsonDecode(jsonData);

    for (var pizzaMap in pizzaMaps) {
      pizzaList.add(Pizza.fromJson(pizzaMap));
    }

    return pizzaList;
  }
}
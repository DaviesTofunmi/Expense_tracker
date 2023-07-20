import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';


const uuid= Uuid();

final formatter= DateFormat.yMd();

enum Category {food, travel, leisure, work}

const categoryIcons= {
  Category.food : Icons.lunch_dining,
  Category.travel : Icons.flight_takeoff,
  Category.leisure : Icons.movie,
  Category.work : Icons.work
};


class Expense{
  final String title;
  final double amoount;
  final String id;
  final DateTime date;
  final Category category;

  Expense({required this.title, required this.amoount, required this.date, required this.category}): id=uuid.v4();

  get FormattedDate{
    return formatter.format(date);
  }


}
import 'package:hive/hive.dart';
part 'transistionmodels.g.dart';

@HiveType(typeId: 0)
class Transistion extends HiveObject {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late DateTime createDate;
  @HiveField(2)
  late bool isExpense = true;
  @HiveField(3)
  late double amount;

  @HiveField(4)
  late int wardNo;

  // Transistion({
  //   required this.name,
  //   required this.createDate,
  //   required this.isExpense,
  //   required this.amount,
  // });

  // setTransition({
  //   String name = '',
  //   DateTime createDate = null,
  //   bool isExpense,
  //   double amount,
  // })

  setTransition(String name, int wardNo
      // DateTime createDate, bool isExpense, double amount
      ) {
    this.name = name;
    this.wardNo = wardNo;
    // this.createDate = createDate;
    // this.isExpense = isExpense;
    // this.amount = amount;
  }
}

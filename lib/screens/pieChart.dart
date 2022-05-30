import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class pieChart extends StatelessWidget {
  Map<String, double> dataMap = {'Male': 17, 'Female': 20, 'Others': 3};

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cartmodel(name: 'Total GharDhuri', valdata: 11366),
                  cartmodel(name: 'Pupulation', valdata: 45608),
                  cartmodel(name: 'Woman', valdata: 24500),
                  cartmodel(name: 'Man', valdata: 211008),
                  cartmodel(name: 'Others', valdata: 0),
                ],
              )),
          Container(
              height: 300,
              child: PieChart(
                  dataMap: dataMap,
                  chartRadius: MediaQuery.of(context).size.width / 7,
                  legendOptions: LegendOptions(
                    legendPosition: LegendPosition.bottom,
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValues: true,
                  ))),
        ],
      ),
    ));
  }

  Card cartmodel({required String name, required int valdata}) {
    return Card(
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('$valdata',
                    style: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ));
  }
}

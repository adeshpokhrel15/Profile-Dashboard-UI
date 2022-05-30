// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class barChart extends StatefulWidget {
//   const barChart({Key? key}) : super(key: key);

//   @override
//   State<barChart> createState() => _barChartState();
// }

// class _barChartState extends State<barChart> {
//   late int showingTooltip;

//   @override
//   void initState() {
//     showingTooltip = -1;
//     super.initState();
//   }

//   BarChartGroupData generateGroupData(int x, int y) {
//     return BarChartGroupData(
//       x: x,
//       showingTooltipIndicators: showingTooltip == x ? [0] : [],
//       barRods: [
//         BarChartRodData(toY: y.toDouble()),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(24),
//           child: AspectRatio(
//             aspectRatio: 2,
//             child: BarChart(
//               BarChartData(
//                 barGroups: [
//                   generateGroupData(1, 10),
//                   generateGroupData(2, 18),
//                   generateGroupData(3, 4),
//                   generateGroupData(4, 11),
//                 ],
//                 barTouchData: BarTouchData(
//                     enabled: true,
//                     handleBuiltInTouches: false,
//                     touchCallback: (event, response) {
//                       if (response != null &&
//                           response.spot != null &&
//                           event is FlTapUpEvent) {
//                         setState(() {
//                           final x = response.spot!.touchedBarGroup.x;
//                           final isShowing = showingTooltip == x;
//                           if (isShowing) {
//                             showingTooltip = -1;
//                           } else {
//                             showingTooltip = x;
//                           }
//                         });
//                       }
//                     },
//                     mouseCursorResolver: (event, response) {
//                       return response == null || response.spot == null
//                           ? MouseCursor.defer
//                           : SystemMouseCursors.click;
//                     }),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:papro/models/bar.dart';

class barChart extends StatelessWidget {
  final List<BarChartModel> data = [
    BarChartModel(
      name: "Dhara-Pipe",
      value: 3,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      name: "Dunge",
      value: 7,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      name: "Jar",
      value: 12,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      name: "Others",
      value: 8,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "value",
        data: data,
        domainFn: (BarChartModel series, _) => series.name,
        measureFn: (BarChartModel series, _) => series.value,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar Chart"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        height: 420,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: charts.BarChart(
          series,
          animate: true,
        ),
      ),
    );
  }
}

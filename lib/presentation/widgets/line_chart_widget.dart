

import 'package:ajeo/presentation/widgets/line_tiles.dart';
import 'package:ajeo/presentation/widgets/picker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {

    final List<Color> gradientColors = [
    const Color.fromRGBO(242, 39, 35, 1),
    // const Color(0xff02d39a),
  ];
    final List<FlSpot>? priceCoordinates;

   LineChartWidget({ Key? key, this.priceCoordinates }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return  LineChart(
        LineChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            verticalInterval: 2.0,
            show: false,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              left: BorderSide(color: Color.fromRGBO(242, 39, 35, 1)),
              bottom: BorderSide(color: Color.fromRGBO(242, 39, 35, 1)),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: priceCoordinates,
              isCurved: true,
              colors: gradientColors,
              barWidth: 3,
              dotData: FlDotData(getDotPainter: (a, b, c, d) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: Colors.white,
                  strokeColor: Colors.black,
                  strokeWidth: 2.0,
                );
              }),
              /*belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              ),*/
            ),
          ],
          clipData: FlClipData.horizontal(),
        ),
      );
  }
}

class WeeklyHistoryPicker extends StatelessWidget {
  const WeeklyHistoryPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Picker(
  childCount: 3,
      pickerList: [
        'Week of 01/02/2020',
        'Week of 01/02/2020',
        'Week of 01/02/2020'
      ],
    );
  }
}
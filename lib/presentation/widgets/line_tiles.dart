

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          getTextStyles: (context,value ) => const TextStyle(
            color: Color.fromRGBO(68, 68, 68, 1),
            fontFamily: 'helves',
            fontWeight: FontWeight.bold,
            fontSize: 9,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Mon';
              case 3:
                return 'Tue';
              case 5:
                return 'Wed';
              case 7:
                return 'Thur';
              case 9:
                return 'Fri';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context,value) => const TextStyle(
            color: Color.fromRGBO(242, 39, 35, 1),
            fontWeight: FontWeight.bold,
            fontSize: 12,
            fontFamily: 'helves',
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'N100';
              case 4:
                return 'N400';
              case 7:
                return 'N700';
              case 10:
                return 'N1000';
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
      );
}

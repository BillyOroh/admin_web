import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';

class DashPage extends StatelessWidget {
  const DashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Main body di sebla nav
      child: Column(
        // Depe main Column
        children: [
          SizedBox(
            // Pembatas di atas
            height: 30,
          ),
          Row(
            // 3 row charts di kolom paling atas
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                //color: Colors.red,
                padding: EdgeInsets.all(20.0),
                height: 200,
                width: 300,
                child: DChartPie(
                  animate: false,
                  data: [
                    {'domain': 'Flutter', 'measure': 28},
                    {'domain': 'React Native', 'measure': 27},
                    {'domain': 'Ionic', 'measure': 20},
                    {'domain': 'Cordova', 'measure': 15},
                  ],
                  fillColor: (pieData, index) => Colors.grey,
                ),
              ),
              Container(
                alignment: Alignment.center,
                //color: Colors.green,
                padding: EdgeInsets.all(20.0),
                height: 200,
                width: 300,
                child: DChartBar(
                  animate: false,
                  data: [
                    {
                      'id': 'Bar',
                      'data': [
                        {'domain': '2020', 'measure': 3},
                        {'domain': '2021', 'measure': 4},
                        {'domain': '2022', 'measure': 6},
                        {'domain': '2023', 'measure': 0.3},
                      ],
                    },
                  ],
                  domainLabelPaddingToAxisLine: 16,
                  axisLineTick: 2,
                  axisLinePointTick: 2,
                  axisLinePointWidth: 10,
                  axisLineColor: Colors.grey,
                  measureLabelPaddingToAxisLine: 16,
                  barColor: (barData, index, id) => Colors.grey,
                  showBarValue: true,
                ),
              ),
              Container(
                alignment: Alignment.center,
                //color: Colors.blue,
                padding: EdgeInsets.all(20.0),
                height: 200,
                width: 300,
                child: DChartLine(
                  animate: false,
                  data: [
                    {
                      'id': 'Line1',
                      'data': [
                        {'domain': 0, 'measure': 4.1},
                        {'domain': 2, 'measure': 4},
                        {'domain': 3, 'measure': 6},
                        {'domain': 4, 'measure': 1},
                      ],
                    },
                    {
                      'id': 'Line2',
                      'data': [
                        {'domain': 0, 'measure': 3.1},
                        {'domain': 2, 'measure': 4},
                        {'domain': 3, 'measure': 5},
                        {'domain': 4, 'measure': 1},
                      ],
                    },
                    {
                      'id': 'Line3',
                      'data': [
                        {'domain': 0, 'measure': 2.1},
                        {'domain': 2, 'measure': 4},
                        {'domain': 3, 'measure': 5},
                        {'domain': 4, 'measure': 3},
                      ],
                    },
                  ],
                  lineColor: (lineData, index, id) => Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(
            // Maps yg di tenga
            child: Container(
              margin: EdgeInsets.all(30.00),
              child: SizedBox.expand(
                child: Image.asset(
                  'images/map_dummy.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Container(
            // Data-data scrollable yg paling bawah
            alignment: Alignment.center,
            color: Colors.grey,
            height: 150,
            margin: EdgeInsets.all(30.00),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('\nS C R O L L A B L E\nD A T A\n'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('\nS C R O L L A B L E\nD A T A\n'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('\nS C R O L L A B L E\nD A T A\n'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('\nS C R O L L A B L E\nD A T A\n'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('\nS C R O L L A B L E\nD A T A\n'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

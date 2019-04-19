/*
 * @Description: 
 * @Author: zhaojijin
 * @LastEditors: Please set LastEditors
 * @Date: 2019-04-18 13:54:54
 * @LastEditTime: 2019-04-19 16:21:07
 */
import 'package:flutter/material.dart';
import 'package:flutter_kline/packages/model/klineConstrants.dart';
import 'package:flutter_kline/packages/view/grid/klinePriceGridWidget.dart';
import 'package:flutter_kline/packages/view/grid/klineVolumeGridWidget.dart';
import 'package:flutter_kline/packages/view/kline/klineCandleWidget.dart';
import 'package:flutter_kline/packages/view/kline/klineMaLineWidget.dart';
import 'package:flutter_kline/packages/view/kline/klineVolumeWidget.dart';

class KlineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                KlinePriceGridWidget(),
                KlineCandleWidget(),
                KlineMaLineWidget(YKMAType.MA5),
                KlineMaLineWidget(YKMAType.MA10),
                KlineMaLineWidget(YKMAType.MA20),
              ],
            ),
            flex: 4,
          ),
          SizedBox(height: 20, child: Container(color: Colors.black)),
          Expanded(
            child: Stack(
              children: <Widget>[
                KlineVolumeGridWidget(),
                KlineVolumeWidget(),
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
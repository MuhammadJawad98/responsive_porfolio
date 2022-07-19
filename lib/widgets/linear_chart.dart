import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/title_text.dart';

class LinearChart extends StatefulWidget {
  const LinearChart(
      {Key? key,
      required this.percent,
      required this.percentage,
      required this.title})
      : super(key: key);
  final double percent;
  final String percentage;
  final String title;

  @override
  State<LinearChart> createState() => _LinearChartState();
}

class _LinearChartState extends State<LinearChart>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _width=MediaQuery.of(context).size.width<650 ?350 :400;
    return SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Stack(children: [
                Container(
                  width: 400,
                  height: 20,
                  color: AppColors.greyDarkColor,
                ),
                SizeTransition(
                  sizeFactor: _animation,
                  axis: Axis.horizontal,
                  axisAlignment: -1,
                  child: Container(
                    height: 20,
                    width: (widget.percent / 100) * _width,
                    color: Colors.green,
                  ),
                ),
              ]),
            ),
            Row(
              children: [
                TitleText(
                  text: widget.title,
                  fontSize: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: TitleText(
                    text: widget.percentage,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

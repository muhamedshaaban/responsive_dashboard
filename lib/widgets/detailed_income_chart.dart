import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          color: const Color(0xff208CC8),
          title: activeIndex == 0 ? 'Design Services' : '40%',
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          titleStyle: AppStyles.styleMedium16
              (context).copyWith(color: activeIndex == 1 ? null : Colors.white),
          color: const Color(0xff4EB7F2),
          title: activeIndex == 1 ? 'Design Product' : '22%',
          value: 25,
          radius: activeIndex == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16
             (context) .copyWith(color: activeIndex == 2 ? null : Colors.white),
          color: const Color(0xff064061),
          title: activeIndex == 2 ? 'Product loyalti' : '25%',
          value: 20,
          radius: activeIndex == 2 ? 50 : 40,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16
             (context) .copyWith(color: activeIndex == 3 ? null : Colors.white),
          color: const Color(0xffE2DECD),
          title: activeIndex == 3 ? 'Other' : '15%',
          value: 22,
          radius: activeIndex == 3 ? 50 : 40,
        ),
      ],
    );
  }
}

part of 'page.dart';

class InsightPage extends StatefulWidget {
  const InsightPage({super.key});

  @override
  State<InsightPage> createState() => _InsightPageState();
}

class _InsightPageState extends State<InsightPage> {
  List<DateTime> list = [];
  @override
  void initState() {
    getDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          topComponentInsight(context, list),
          const Divider(),
          SizedBox(
            height: resHeight(context, 540),
            child: SingleChildScrollView(
                child: Column(
              children: [
                bmiComponent(context),
                SizedBox(
                  height: resHeight(context, 25),
                ),
                healthMonitor(context),
                SizedBox(
                  height: resHeight(context, 25),
                ),
                workoutProgress(context),
              ],
            )),
          )
        ],
      ),
    );
  }

  getDate() {
    var dateNow = DateTime.now();
    var dateFirst = dateNow.subtract(const Duration(days: 3));

    for (int i = 0; i < 7; i++) {
      setState(() {
        list.add(dateFirst.add(Duration(days: i)));
      });
    }
  }
}

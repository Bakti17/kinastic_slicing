part of 'page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   body:
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: resWidth(context, 16)),
      child: Column(
        children: [
          topComponentHome(context),
          SizedBox(
            height: resHeight(context, 611),
            child: SingleChildScrollView(
                child: Column(
              children: [
                searchBar(context),
                const SizedBox(
                  height: 22,
                ),
                todayPlan(context),
                const SizedBox(
                  height: 22,
                ),
                upcomingActivities(context),
                recomendedActivity(context)
              ],
            )),
          ),
        ],
      ),
      // ),
      // bottomNavigationBar: NavBar(),
    );
  }
}

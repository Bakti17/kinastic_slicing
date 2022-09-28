part of '../component.dart';

Widget todayPlan(BuildContext context) {
  return SizedBox(
    height: resHeight(context, 195),
    width: resWidth(context, 343),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Today\'s Plan',
        style:
            style17.copyWith(fontWeight: FontWeight.bold, color: primaryColor),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cardPlan(context,
              name: 'Activity',
              estimation: '30 minutes',
              assets: 'assets/images/activity.png'),
          cardPlan(context,
              name: 'Meditate',
              estimation: '15 minutes',
              assets: 'assets/images/meditate.png')
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cardPlan(context,
              name: 'Food',
              estimation: '2 recipes',
              assets: 'assets/images/food.png'),
          cardPlan(context, name: 'Let\'s Go')
        ],
      )
    ]),
  );
}

Widget cardPlan(BuildContext context,
    {required String name, String? estimation, String? assets}) {
  return Container(
    height: resHeight(context, 72),
    width: resWidth(context, 164),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    decoration: BoxDecoration(
      color: estimation != null ? primaryColor : selectedColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: estimation != null
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: style14.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      estimation,
                      style: style12.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: selectedColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    assets.toString(),
                    fit: BoxFit.contain,
                  ),
                )
              ])
        : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(name,
                style: style18.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: 4,
              width: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: primaryColor,
              ),
            )
          ]),
  );
}

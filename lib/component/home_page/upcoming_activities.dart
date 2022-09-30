part of '../component.dart';

Widget upcomingActivities(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upcoming activities',
            style: style17.copyWith(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const CoachPage()));
            },
            child: Text(
              'See more',
              style: style12.copyWith(color: greyColor),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      cardWorkActivities(context,
          image: 'assets/images/fullBody.png',
          title: 'Fullbody Workout',
          date: 'Today, 03:00pm',
          active: true),
      const SizedBox(
        height: 15,
      ),
      cardWorkActivities(context,
          image: 'assets/images/upperBody.png',
          title: 'Upperbody Workout',
          date: 'August 15, 02:00pm'),
    ],
  );
}

Widget cardWorkActivities(BuildContext context,
    {required String image,
    required String title,
    required String date,
    bool? active}) {
  bool isActive = active ?? false;
  return Container(
    width: resWidth(context, 343),
    height: resHeight(context, 80),
    padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
    decoration: BoxDecoration(
        color: darkerWhiteColor, borderRadius: BorderRadius.circular(10)),
    child: Row(children: [
      Container(
        width: resHeight(context, 50),
        height: resHeight(context, 50),
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: isActive ? lightGreenColor : greyBackgroundColor,
            borderRadius: BorderRadius.circular(1000)),
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: style12.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            date,
            style:
                style10.copyWith(fontWeight: FontWeight.bold, color: greyColor),
          )
        ],
      ),
      const Spacer(),
      StatefulBuilder(
          builder: ((context, setState) =>
              // Switch(
              //     // trackColor: ,
              //     value: isActive,
              //     onChanged: (value) => setState(() => isActive = value))
              GestureDetector(
                onTap: () => setState(() => isActive = !isActive),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  alignment:
                      isActive ? Alignment.centerRight : Alignment.centerLeft,
                  height: resHeight(context, 24),
                  width: resWidth(context, 44),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: isActive ? selectedColor : primaryColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Container(
                    height: 14,
                    width: 14,
                    // height: resWidth(context, 14),
                    // width: resWidth(context, 14),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              )))
    ]),
  );
}

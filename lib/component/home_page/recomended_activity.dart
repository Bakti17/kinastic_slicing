part of '../component.dart';

Widget recomendedActivity(BuildContext context) => SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recomended for you',
            style: style17.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: resHeight(context, 15),
          ),
          cardRecomended(context,
              image: 'assets/images/fullBody.png',
              title: 'Full Body Workout',
              exercise: 12,
              timeMinutes: 40),
          cardRecomended(context,
              image: 'assets/images/fullBody.png',
              title: 'Lower Body Workout',
              exercise: 12,
              timeMinutes: 40),
          cardRecomended(context,
              image: 'assets/images/fullBody.png',
              title: 'Lower Body Workout',
              exercise: 12,
              timeMinutes: 40),
        ],
      ),
    );

Widget cardRecomended(context,
        {required String image,
        required String title,
        required int exercise,
        required int timeMinutes}) =>
    Container(
      width: double.infinity,
      height: resHeight(context, 132),
      padding: const EdgeInsets.fromLTRB(20, 20, 30, 18),
      // padding: EdgeInsets.only(
      //     left: resWidth(context, 20), right: resWidth(context, 30)),
      decoration: BoxDecoration(
          color: darkerWhiteColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: style14.copyWith(
                    fontWeight: FontWeight.w500, color: primaryColor),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                '$exercise exercises | ${timeMinutes}mins',
                style: style12.copyWith(
                    fontWeight: FontWeight.w500, color: greyColor),
              ),
              const Spacer(
                flex: 4,
              ),
              SizedBox(
                width: resWidth(context, 94),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: selectedColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    'View More',
                    style: style10.copyWith(),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            height: resHeight(context, 92),
            width: resHeight(context, 92),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(1000)),
            child: Image.asset(image),
          )
        ],
      ),
    );

part of '../component.dart';

Widget topProgramCoach(BuildContext context) {
  return SizedBox(
    height: resHeight(context, 210),
    width: double.infinity,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Top Program',
        style: style17.copyWith(fontWeight: FontWeight.bold),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: resHeight(context, 180),
            width: resWidth(context, 164),
            // color: Colors.red,
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  height: resHeight(context, 170),
                  width: double.infinity,
                  padding: EdgeInsets.only(bottom: resHeight(context, 13)),
                  decoration: BoxDecoration(
                      color: selectedColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Activity',
                          style: style14.copyWith(color: Colors.white),
                        ),
                        Text(
                          '120 Exercises',
                          style: style16.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                SizedBox(
                    height: resHeight(context, 115),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/programs.png',
                      fit: BoxFit.fill,
                    )),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: resHeight(context, 75),
                width: resWidth(context, 164),
                padding: EdgeInsets.only(left: resWidth(context, 13)),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mindfulness',
                        style: style14.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '35 Exercises',
                        style: style16.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ]),
              ),
              Container(
                height: resHeight(context, 75),
                width: resWidth(context, 164),
                padding: EdgeInsets.only(left: resWidth(context, 13)),
                decoration: BoxDecoration(
                    color: darkerWhiteColor,
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nutrition',
                        style: style14.copyWith(color: primaryColor),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '300 Recipes',
                        style: style16.copyWith(
                            fontWeight: FontWeight.bold, color: primaryColor),
                      ),
                    ]),
              ),
            ],
          )
        ],
      )
    ]),
  );
}

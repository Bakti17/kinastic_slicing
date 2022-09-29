part of '../component.dart';

Widget topCardCoach(BuildContext context) {
  return Container(
    alignment: Alignment.bottomCenter,
    height: resHeight(context, 181),
    width: double.infinity,
    // decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10), color: Colors.red),
    child: Stack(alignment: Alignment.bottomRight, children: [
      Container(
        height: resHeight(context, 143),
        width: double.infinity,
        padding: EdgeInsets.only(
            left: resWidth(context, 12), top: resHeight(context, 23)),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: primaryColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Understand your',
            style: style14.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: resHeight(context, 5),
          ),
          Text(
            'Physical well being',
            style: style13.copyWith(
                fontWeight: FontWeight.w400, color: Colors.white),
          ),
          SizedBox(
            height: resHeight(context, 25),
          ),
          SizedBox(
            width: resWidth(context, 94),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: selectedColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Let\'s Assess',
                style: style10.copyWith(fontWeight: FontWeight.w600),
              ),
              onPressed: () {},
            ),
          )
        ]),
      ),
      Image.asset('assets/images/coach.png'),
    ]),
  );
}

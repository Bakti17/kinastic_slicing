part of '../component.dart';

Widget bmiComponent(BuildContext context) {
  return Container(
      height: resHeight(context, 146),
      width: resWidth(context, 343),
      padding: EdgeInsets.symmetric(horizontal: resWidth(context, 8)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: selectedColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BMI (Body Mass Index)',
                  style: style14.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white)),
              SizedBox(
                height: resHeight(context, 5),
              ),
              Text('You have normal weight)',
                  style: style12.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.white)),
              SizedBox(
                height: resHeight(context, 15),
              ),
              SizedBox(
                width: resWidth(context, 95),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    'View More',
                    style: style10.copyWith(fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          SizedBox(
              height: resHeight(context, 106),
              width: resWidth(context, 106),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: resHeight(context, 88),
                    width: resWidth(context, 88),
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: Colors.white),
                    child: CircularProgressIndicator(
                      value: 0.34,
                      strokeWidth: 25,
                      color: primaryColor,
                      // valueColor: Animation<Color?>,
                    ),
                  ),
                  Text(
                    '20,1',
                    style: style12.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              )),
        ],
      ));
}

part of '../component.dart';

Widget topComponentInsight(BuildContext context, List<DateTime> list) {
  var date = DateTime.now();
  var firstDate = DateTime(1990);
  var lastDate = DateTime(3000);

  return SizedBox(
    height: resHeight(context, 133),
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: StatefulBuilder(builder: (context, setState) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: resHeight(context, 15),
          ),
          GestureDetector(
            onTap: () async {
              // print('tertap');
              await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: firstDate,
                      lastDate: lastDate)
                  .then((value) => setState(() {
                        value.runtimeType != Null ? date = value! : value;
                        list = [];

                        var dateFirst = date.subtract(const Duration(days: 3));

                        for (int i = 0; i < 7; i++) {
                          list.add(dateFirst.add(Duration(days: i)));
                        }
                      }));
            },
            child: SizedBox(
              height: resHeight(context, 24),
              width: resWidth(context, 185),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    DateFormat("dd MMM y").format(date),
                    style: style19.copyWith(
                        fontWeight: FontWeight.w400, color: primaryColor),
                  ),
                  SizedBox(
                    width: resWidth(context, 10),
                  ),
                  Text(
                    DateFormat("EEE").format(date),
                    style: style12.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    color: primaryColor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: resHeight(context, 25),
          ),
          StatefulBuilder(
            builder: ((context, setState) => SizedBox(
                height: resHeight(context, 57),
                width: resWidth(context, 342),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...list.map((dateD) => Container(
                        height: resHeight(context, 57),
                        width: dateD.weekday == date.weekday
                            ? resWidth(context, 43)
                            : resWidth(context, 30),
                        padding: dateD.weekday == date.weekday
                            ? const EdgeInsets.all(7)
                            : EdgeInsets.zero,
                        decoration: BoxDecoration(
                            color: dateD.weekday == date.weekday
                                ? selectedColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        // child: Text('index $index = ${list[index].toString()}'),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                DateFormat('EEEE')
                                    .format(dateD)
                                    .toString()
                                    .characters
                                    .first,
                                style: style12.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: dateD.weekday == date.weekday
                                        ? Colors.white
                                        : greyColor)),
                            Text(
                              dateD.day.toString(),
                              style: style16.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: dateD.weekday == date.weekday
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        )))
                  ],
                ))),
          )
        ]);
      }),
    ),
  );
}

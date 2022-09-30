part of '../component.dart';

Widget assessments(
  BuildContext context,
) {
  List assessments = [
    {
      'image': 'assets/images/mental_health.png',
      'title': 'Mental Health',
      'dura': 3,
      // 'small': true,
      'color': selectedColor.withOpacity(0.3)
    },
    {
      'image': 'assets/images/empathy.png',
      'title': 'Empathy',
      'dura': 5,
      // 'small': false,
      'color': greyBackgroundColor,
    },
  ];
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Assessments',
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
      // Flexible(
      SizedBox(
          height: resHeight(context, 209),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: assessments.length,
              itemBuilder: ((context, index) => Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: double.infinity,
                      height: resHeight(context, 80),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(children: [
                          Container(
                            height: resHeight(context, 50),
                            width: resWidth(context, 51),
                            // padding: assessments[index]['small']
                            //     ? const EdgeInsets.all(7.5)
                            //     : EdgeInsets.zero,
                            decoration: BoxDecoration(
                                color: assessments[index]['color'],
                                borderRadius: BorderRadius.circular(100)),
                            child: Image.asset(assessments[index]['image']),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                assessments[index]['title'],
                                style: style12.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${assessments[index]['dura']} minutes',
                                style: style10.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: greyColor),
                              )
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: resHeight(context, 35),
                            width: resWidth(context, 62),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: selectedColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                'Assess',
                                style: style10.copyWith(
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                      ),
                    ),
                  ))))
    ],
  );
}

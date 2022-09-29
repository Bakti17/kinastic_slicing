part of '../component.dart';

Widget topComponentHome(BuildContext context) {
  return SizedBox(
    height: resHeight(context, 76.84),
    width: resWidth(context, 375),
    child: Padding(
      padding: EdgeInsets.only(bottom: resWidth(context, 11)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
              height: resHeight(context, 48),
              width: resWidth(context, 48),
              child: CircleAvatar(
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back Bakti',
                  style: style15.copyWith(
                      color: selectedColor, fontWeight: FontWeight.bold)),
              Text(
                'how are you feeling today?',
                style: style15.copyWith(color: primaryColor),
              ),
              const SizedBox(height: 1)
            ],
          ),
          const Spacer(),
          Container(
            height: resHeight(context, 40),
            width: resWidth(context, 40),
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.passthrough,
              children: [
                const Center(child: Icon(Icons.notifications_none_rounded)),
                Padding(
                  padding: const EdgeInsets.only(top: 3, right: 3),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    ),
  );
}

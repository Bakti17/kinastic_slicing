part of 'constant.dart';

resHeight(BuildContext context, double height) {
  return MediaQuery.of(context).size.height * (height / 812);
}

resWidth(BuildContext context, double width) {
  return MediaQuery.of(context).size.width * (width / 375);
}

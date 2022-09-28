part of '../component.dart';

Widget searchBar(BuildContext context) {
  return SizedBox(
    height: resHeight(context, 50),
    width: resWidth(context, 343),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_rounded),
          hintText: 'Search...',
          hintStyle: style12.copyWith(color: const Color(0xff9B99B9)),
          border: InputBorder.none),
    ),
  );
}

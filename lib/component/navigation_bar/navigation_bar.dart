part of '../component.dart';

class NavBar extends StatefulWidget {
  Function()? func;
  NavBar({this.func, Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  @override
  void initState() {
    index = context.read<IndexNavbarCubit>().state;
    // index =
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<IndexNavbarCubit, int>(
      listener: (context, state) => setState(() => index = state),
      child: Container(
        alignment: Alignment.center,
        height: resHeight(context, 80),
        color: Colors.white,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: index == 0
                  ? resWidth(context, 10)
                  : resWidth(context, (10 + (index * 75))),
              top: 0,
              child: Container(
                width: 50,
                height: 10,
                decoration: BoxDecoration(
                    color: selectedColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                navbarItem(
                    icon: Icons.home_outlined,
                    selectedIcon: Icons.home,
                    label: 'home',
                    id: 0),
                navbarItem(
                    icon: Icons.groups_outlined,
                    selectedIcon: Icons.groups,
                    label: 'coach',
                    id: 1),
                navbarItem(
                    icon: Icons.insights_outlined,
                    selectedIcon: Icons.insights,
                    label: 'insight',
                    id: 2),
                navbarItem(
                    icon: Icons.dashboard_outlined,
                    selectedIcon: Icons.dashboard,
                    label: 'explore',
                    id: 3),
                navbarItem(
                    icon: Icons.person_outlined,
                    selectedIcon: Icons.person,
                    label: 'profile',
                    id: 4),
              ],
            ),
          ],
        ),
      ),
    );
    // return BottomNavigationBar(
    //   currentIndex: index,
    //   items: [
    //     BottomNavigationBarItem(icon: Icon(index ==  0? Icons.home_filled : Icons.home_outlined, color: primaryColor), label: 'home'),
    //     BottomNavigationBarItem(icon: Icon(index == 1? Icons.groups_rounded: Icons.groups_outlined, color:primaryColor), label: 'coach'),
    //   ],
    //   selectedItemColor: selectedColor,
    //   onTap: (value) => setState(()=>index = value),
    //   );
  }

  navbarItem(
      {required IconData icon,
      required IconData selectedIcon,
      required String label,
      required int id}) {
    return GestureDetector(
      onTap: () {
        context.read<IndexNavbarCubit>().setIndex(id);
        setState(() => index = id);
      },
      child: SizedBox(
        height: resHeight(context, 80),
        width: resWidth(context, 75),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // if (index == id)
            //   Container(
            //     height: resHeight(context, 5),
            //     width: 55,
            //     decoration: BoxDecoration(
            //         color: selectedColor,
            //         borderRadius: const BorderRadius.only(
            //             bottomLeft: Radius.circular(10),
            //             bottomRight: Radius.circular(10))),
            //   ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(index == id ? selectedIcon : icon,
                  color: index == id ? selectedColor : primaryColor),
              Text(
                label,
                style: TextStyle(
                    color: index == id ? selectedColor : primaryColor),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

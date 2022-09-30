part of 'page.dart';

class CoachPage extends StatelessWidget {
  const CoachPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
        child: Column(children: [
          topCardCoach(context),
          SizedBox(
            height: resHeight(context, 25),
          ),
          topProgramCoach(context),
          SizedBox(
            height: resHeight(context, 25),
          ),
          assessments(context)
        ]),
      ),
    );
  }
}

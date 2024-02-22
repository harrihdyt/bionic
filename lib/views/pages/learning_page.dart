part of 'page.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  @override
  Widget build(BuildContext context) {
    List<LearingModel> list = [
      LearingModel(
          title: 'Lorem ipsum',
          description:
              'Lorem ipsum dolor sit amet consectetur. Lectus purus nunc nec massa. '),
      LearingModel(
          title: 'Lorem ipsum',
          description:
              'Lorem ipsum dolor sit amet consectetur. Lectus purus nunc nec massa. '),
    ];

    header() {
      return Center(
        child: Text(
          'Lorem Ipsum',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      );
    }

    box({required String title, required String desc}) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: accentOrangeColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(desc, style: blackTextStyle),
          ],
        ),
      );
    }

    content() {
      return Column(
        children: list
            .map((e) => box(title: e.title!, desc: e.description!))
            .toList(),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        ClipPath(
          clipper: WaveClipperTwo(
            flip: true,
          ),
          child: Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              color: accentOrangeColor,
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                ),
                header(),
                const SizedBox(
                  height: 30,
                ),
                const CalenderWiidget(),
                SizedBox(
                  height: 30,
                ),
                content(),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            'assets/c.png',
            height: 120,
          ),
        ),
      ],
    ));
  }
}

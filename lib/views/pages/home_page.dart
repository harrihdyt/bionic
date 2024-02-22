part of 'page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List lorem = [
      'Lorem',
      'ipsum',
      'dolor',
      'amet',
    ];

    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        decoration: BoxDecoration(
          color: accentOrangeColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        width: double.infinity,
        height: 80,
        child: Row(
          children: [
            Icon(
              Icons.person,
              color: whiteColor,
              size: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lorem Ipsum',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Lorem Ipsum',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget rectangle({required String name}) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LearningPage(),
              ));
        },
        child: Container(
          margin: const EdgeInsets.only(
            left: 14,
            right: 14,
            bottom: 1,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          decoration: BoxDecoration(
            color: accentPurpleColor,
          ),
          width: double.infinity,
          height: 80,
          child: Center(
            child: Text(
              name,
              style: whiteTextStyle,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Column(
        children: lorem.map((e) => rectangle(name: e)).toList(),
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
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 140,
            ),
            const SizedBox(
              height: 30,
            ),
            header(),
            content(),
          ],
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

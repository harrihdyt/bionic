part of 'page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Widget form() {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: blackTextStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: blackTextStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: blackTextStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                        Text(
                          'Remember my',
                          style: blackTextStyle,
                        )
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lupa Password?',
                        style: purleTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: purpleColor,
                    minimumSize: const Size(200, 50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ));
                },
                child: Text(
                  'Login',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget register() {
      return Column(
        children: [
          Text(
            'Belum memiliki akun?',
            style: blackTextStyle.copyWith(
              color: Colors.grey,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Register Now',
                style: purleTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ))
        ],
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Column(
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
            Text(
              'LOGIN',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            form(),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: register(),
            ),
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

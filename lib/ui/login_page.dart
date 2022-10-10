import 'package:dicoding_login_page/widgets/build_account.dart';
import 'package:dicoding_login_page/widgets/build_button_icon.dart';
import 'package:dicoding_login_page/widgets/menu_title.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.network(
              'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/new-ui-logo.png'),
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(
            child: Column(
          children: const [
            MenuTitle(title: 'Academy'),
            MenuTitle(title: 'Challenge'),
            MenuTitle(title: 'Event'),
            MenuTitle(title: 'Job'),
            MenuTitle(title: 'Developer'),
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/commons/certificate_logo.png',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Masuk',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BuildAccount(
                  titleAccont: 'Email',
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 16),
              BuildAccount(
                obscureText: obscureText,
                titleAccont: 'Password',
                sufixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Lupa Password?',
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade800),
                onPressed: () {},
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Divider(
                      color: Colors.black,
                    ),
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 20,
                        ),
                        color: Colors.white,
                        child: Text(
                          'Atau',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: BuildButtonIcon(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.grey,
                  ),
                  label: Text(
                    'Masuk dengan Google',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              BuildButtonIcon(
                  icon: const FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.blue),
                  label: const Text(
                    'Masuk degan Facebook',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {}),
              const SizedBox(height: 8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Belum punya akun? Ayo ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                      text: 'Daftar',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan melakukan login, anda setuju dengan ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                      text: 'syarat & ketentuan Diconding',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:contatoWeb/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 85, 85, 84),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fundo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 30,
              ),
              button(
                name: "Whatsapp",
                linkIcon: 'assets/images/whatsapp.png',
              ),
              const SizedBox(
                height: 15,
              ),
              button(
                  name: 'Instagram',
                  linkIcon: 'assets/images/instagram.png',
                  data: 'https://www.instagram.com/fabiogadenz'),
              const SizedBox(
                height: 15,
              ),
              button(
                  name: 'Google Maps',
                  linkIcon: "assets/images/maps.png",
                  data:
                      'https://www.google.com/maps/dir//R.+Espanha,+84,+Eldorado+do+Sul+-+RS,+92990-000/@-30.0001807,-51.3496636,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x95197daf9c192779:0x34b15d7ef31f5043!2m2!1d-51.3146441!2d-30.0001853!3e0'),
              const SizedBox(
                height: 15,
              ),
              button(
                  name: 'Telefone',
                  linkIcon: 'assets/images/phone.png',
                  data: "tel://+5551995189329"),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              const Text(
                " Desenvolvedor Fábio Gadenz, para contato acesse as opções acima",
                style: TextStyle(
                    color: Color.fromARGB(255, 179, 167, 2), fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

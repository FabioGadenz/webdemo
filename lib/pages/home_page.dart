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
                      'https://www.google.com.br/maps/place/Usina+do+Gas%C3%B4metro/@-30.0390277,-51.2460958,15.25z/data=!4m5!3m4!1s0x95197917c11ee4fd:0xc4d07b56891fa52d!8m2!3d-30.0341857!4d-51.2411077'),
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

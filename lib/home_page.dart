import 'package:contatoWeb/widgets/button.dart';
import 'package:contatoWeb/widgets/launch_app.dart';
import 'package:contatoWeb/widgets/launch_wats.dart';
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
            children: [
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
             /*  button(name: "Whatsapp", linkIcon: 'assets/images/whatsapp.png', widget: launchWhatsApp()), */
               SizedBox(
                height: 26,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 73, 73, 73),
                  onPressed: () {
                    launchWhatsApp();
                  },
                  label: const Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "assets/images/whatsapp.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ), 
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 25,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 73, 73, 73),
                  onPressed: () {
                    launchApp("https://www.instagram.com/fabiogadenz");
                  },
                  label: const Text(
                    'Instagram',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "assets/images/instagram.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 25,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 73, 73, 73),
                  onPressed: () {
                    // googleMaps();
                    launchApp(
                        'https://www.google.com/maps/dir//R.+Espanha,+84,+Eldorado+do+Sul+-+RS,+92990-000/@-30.0001807,-51.3496636,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x95197daf9c192779:0x34b15d7ef31f5043!2m2!1d-51.3146441!2d-30.0001853!3e0');
                  },
                  label: const Text(
                    ' Google Maps',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "assets/images/maps.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
             /*  button(name: 'Telefone', linkIcon: 'assets/images/phone.png', widget: launchApp("tel:+5551995189329")), */
               SizedBox(
                height: 26,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 73, 73, 73),
                  onPressed: () {
                    launchApp("tel:+5551995189329");
                  },
                  label: const Text(
                    'Telefone',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "assets/images/phone.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ), 
              const SizedBox(
                height: 40,
              ),
              const Text(
                " Desenvolvedor Fábio Gadenz, para contato acesse as opções acima",
                style: TextStyle(
                    color: Color.fromARGB(255, 179, 167, 2), fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}

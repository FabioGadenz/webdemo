import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

launchWhatsApp() async {
  final link = const WhatsAppUnilink(
    phoneNumber: '+55-(51)995189329',
    text: "oi!",
  );

  await launchUrlString('$link');
}

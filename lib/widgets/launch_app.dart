import 'package:url_launcher/url_launcher.dart';

Future<dynamic> launchApp(String data) async {
  var app = Uri.parse(data);
  await launchUrl(app);
}

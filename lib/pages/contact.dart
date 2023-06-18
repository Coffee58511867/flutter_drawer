import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  _sendingMails() async {
    var url = Uri.parse("mailto:hlalelemaroba@gmail.com");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendingSMS() async {
    var url = Uri.parse("sms:63338813");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _makingPhoneCall() async {
    var url = Uri.parse("tel: 58511867");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Info"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _sendingMails();
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(350, 40),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: const Text("Send Email to us")),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  _makingPhoneCall();
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(350, 40),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                
                child: const Text("Call Us Here")),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  _sendingSMS();
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(350, 40),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: const Text("Send us SMS"))
          ],
        ),
      ),
    );
  }
}

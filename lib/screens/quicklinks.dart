import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class QuickLinks extends StatelessWidget {
  static const routeName = '/quick';
  final List<Map<String, String>> s = [
    {"text": "eKUMBH POrtal", "url": "https://ekumbh.aicte-india.org/"},
    {
      "text": "AICTE Internship Portal",
      "url": "https://internship.aicte-india.org/"
    },
    {
      "text": "DigitalSkilling 1 Core Students",
      "url": "https://1crore.aicte-india.org/"
    },
    {
      "text": "Cyber Security Awareness",
      "url": "https://www.aicte-india.org/CyberSecurity"
    },
    {
      "text": "AICTE - Al Learning Translation Tool ",
      "url":
          "https://www.aicte-india.org/sites/default/files/User%20Manual%20for%20Existing%20Institutes_Approval_Process_18_19.pdf"
    },
    {"text": "ATAL Academy", "url": "https://www.aicte-india.org/atal"},
    {
      "text": "ODL and Online Regulatory Framework",
      "url": "https://aicte-india.org/odl/"
    },
    {"text": "PMSSS J&K", "url": "https://www.aicte-india.org/bureaus/jk"},
    {
      "text": "Polices and Reforms",
      "url": "https://www.aicte-india.org/policy-reforms",
    },
    {
      "text": "FDP -Si Web Portal",
      "url": "https://fdp-si.aicte-india.org/",
    },
    {
      "text": "AICTE Karma",
      "url": "https://www.aicte-india.org/schemes/KARMA",
    },
  ];

  QuickLinks({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Quick Links'),
            backgroundColor: const Color.fromRGBO(244, 85, 4, 1)),
        body: ListView.builder(
            itemCount: s.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 6,
                  color: Colors.black,
                  child: TextButton(
                      onPressed: () async {
                        final url = s[index]['url'] as String;

                        await launchUrl(Uri.parse(url));
                      },
                      child: Text(
                        s[index]['text'] as String,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              );
            }));
  }
}

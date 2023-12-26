import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Announcements extends StatelessWidget {
  static const routeNmae = '/announcements';
  final List<Map<String, String>> p = [
    {
      "text":
          "Suggestions for AICTE Approval Process 2023-24 from the Education partners (Stakeholders)",
      "url":
          "https://www.aicte-india.org/content/suggestions-aicte-approval-process-2023-24-education-partners-stakeholders"
    },
    {
      "text":
          "The last date for the submission of online application under AICTE Pragati, Saksham & Swanath Schemes has been extended",
      "url":
          "https://www.aicte-india.org/content/last-date-submission-online-application-under-aicte-pragati-saksham-swanath-schemes-has-been"
    },
    {
      "text": "Calendar for Engineering Book Discussion in different Languages",
      "url":
          "https://www.aicte-india.org/content/calendar-engineering-book-discussion-different-languages"
    },
    {
      "text":
          "AICTE Approval Process 2023-24: Proposal for New Courses (Nomenclatures)",
      "url":
          "https://www.aicte-india.org/content/aicte-approval-process-2023-24-proposal-new-courses-nomenclatures"
    },
    {
      "text": "Exhibition on 'Sardar Patel - The Architect of Unification",
      "url":
          "https://www.aicte-india.org/content/exhibition-sardar-patel-architect-unification"
    },
    {
      "text": "Unity Day Celebration On 31st October 2022, 'Run for Unity'",
      "url":
          "https://www.aicte-india.org/content/unity-day-celebration-31st-october-2022-%E2%80%98run-unity%E2%80%99"
    },
    {
      "text":
          "Final Report of HLC on National Credit Framework- 17 October 2022",
      "url":
          "https://www.aicte-india.org/content/final-report-hlc-national-credit-framework-17-october-2022"
    },
    {
      "text":
          "Extension for submission of applications by institutes under SPICES scheme.",
      "url":
          "https://www.aicte-india.org/content/extension-submission-applications-institutes-under-spices-scheme"
    },
    {
      "text":
          "Celebration of Shikshak Parv (Teacher's Day) : 05th September, 2022 onwards",
      "url":
          "https://www.aicte-india.org/content/celebration-shikshak-parv-teachers-day-05th-september-2022-onwards"
    },
    {
      "text":
          "Applications are invited for Post Graduate (GATE/GPAT/CEED) Scholarship for A.Y. 2022-23",
      "url":
          "https://www.aicte-india.org/content/applications-are-invited-post-graduate-gategpatceed-scholarship-ay-2022-23"
    }
  ];

  Announcements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Announcements'),
            backgroundColor: const Color.fromRGBO(244, 85, 4, 1)),
        body: ListView.builder(
            itemCount: p.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 6,
                  color: Colors.black,
                  child: TextButton(
                      onPressed: () async {
                        final url = p[index]['url'] as String;

                        await launchUrl(Uri.parse(url));
                      },
                      child: Text(
                        p[index]['text'] as String,
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

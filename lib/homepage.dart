import 'package:flutter/material.dart';
import 'package:flutter_job/util/recent_job_card.dart';

import 'util/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    // [ companyName , jobsTitle , logoImagePath , hourlyRate ]
    ['Uber', 'UI Designer ', 'lib/icons/uber.png', 45],
    ['Google', 'Flutter Developer ', 'lib/icons/google.jpg', 90],
    ['Apple', 'Software Eng. ', 'lib/icons/apple.png', 150],
  ];
  final List recentJobs = [
    // [ companyName , jobsTitle , logoImagePath , hourlyRate ]
    ['Nike', 'Web Designer ', 'lib/icons/nike.png', 45],
    ['Google', 'Flutter Developer ', 'lib/icons/google.jpg', 90],
    ['Apple', 'Software Eng. ', 'lib/icons/apple.png', 150],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables

        children: [
          const SizedBox(height: 50),
          // app bar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'lib/icons/menu_left_from.png',
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(height: 25),

          //discover a new path

          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Discover a New Path',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          const SizedBox(height: 25),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none, hintText: 'Search for a job... '),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'lib/icons/preferences.png',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          //for you ->job  cards
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'For You',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          const SizedBox(height: 25),
          Container(
              height: 160,
              child: ListView.builder(
                  itemCount: jobsForYou.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return JobCard(
                      companyName: jobsForYou[index][0],
                      jobTitle: jobsForYou[index][1],
                      logoImagePath: jobsForYou[index][2],
                      hourlyRate: jobsForYou[index][3],
                    );
                  })),
          const SizedBox(height: 25),
          //recently add -> job titles

          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Son Eklenen İşler ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      logoImagePath: recentJobs[index][2],
                      hourlyRate: recentJobs[index][3]);
                }),
          )),
        ],
      ),
    );
  }
}

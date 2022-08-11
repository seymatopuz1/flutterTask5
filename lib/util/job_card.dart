// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  JobCard({required this.companyName, required this.jobTitle, required this.logoImagePath, required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ClipRRect(
          child: Container(
            width: 200,
            padding: const EdgeInsets.all(12),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      child: Image.asset(logoImagePath),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        // ignore: sort_child_properties_last
                        child: Text(
                          'Part Time',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    jobTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Text(' \$ ' + hourlyRate.toString() + ' /hr'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*I don't know where to start.
I met BTS 3 years ago. At that time, there was a Şeyma who did not know what to do and had no dreams / human gave me the strength to implement my dreams and them, thank you. BTS*/

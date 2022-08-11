import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  RecentJobCard(
      {required this.companyName, required this.jobTitle, required this.logoImagePath, required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200], border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(5),
                color: Colors.grey[300],
                height: 40,
                child: Image.asset(
                  logoImagePath,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  companyName,
                  style: TextStyle(color: Colors.grey[600]),
                )
              ],
            ),
            // ignore: prefer_interpolation_to_compose_strings
            Text(' \$ ' + hourlyRate.toString() + '/hr'),
          ],
        ),
      ),
    );
  }
}

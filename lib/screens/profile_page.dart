import 'package:flutter/material.dart';

import '../models/data_file.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double sliderValueHeight = 150;
  double sliderValueWeight = 50;

  @override
  Widget build(BuildContext context) {
    var imageWidth =
        MediaQuery.of(context).size.width * 0.60; //% del ancho de pantalla

    Widget activitiesSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColumn(Icons.access_time, 'Time', '2h 45'),
        _buildColumn(Icons.room_outlined, "Km", "212,4"),
        _buildColumn(Icons.directions_run, "Activities", "42"),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        title: const Text(
          'My Profile',
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: '1',
                  child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: imageWidth,
                      height: imageWidth,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(imageProfile)))),
                ),
                const SizedBox(height: 10),
                Text(
                  'Diana Font',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 5),
                Text(
                  'since 20 April 2022',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 40),
                activitiesSection,
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Height'),
                    Slider(
                        value: sliderValueHeight,
                        max: 240,
                        activeColor: Theme.of(context).colorScheme.secondary,
                        inactiveColor: Theme.of(context).colorScheme.primary,
                        label: sliderValueHeight.round().toString(),
                        onChanged: (double value) {
                          setState(() => sliderValueHeight = value);
                        }),
                    Text('${sliderValueHeight.round()} cm'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Weight'),
                    Slider(
                        value: sliderValueWeight,
                        max: 300,
                        activeColor: Theme.of(context).colorScheme.secondary,
                        inactiveColor: Theme.of(context).colorScheme.primary,
                        label: sliderValueWeight.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            sliderValueWeight = value;
                          });
                        }),
                    Text('${sliderValueWeight.round()} Kg'),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

Column _buildColumn(IconData icon, String label, String plus) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: const BoxDecoration(
          color: Color(0xFFCA7DF9),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            Icon(icon),
            Text(label,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                )),
            Text(plus,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    ],
  );
} // método _buildButtonColumn

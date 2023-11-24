import 'package:activitat_1_3/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../models/data_file.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Hero(
                tag: '1',
                child:
                    CircleAvatar(backgroundImage: NetworkImage(imageProfile))),
            iconSize: 50,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          )
        ],
        title: const Text(
          'Fitness Time',
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hola Diana,",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                Text("Come 5 veces al día y permanece hidratada durante el día",
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.right,
                  'Más detalles',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.blue),
                ),
                const SizedBox(height: 15),
                Text("Últimas Actividades",
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 5),
                for (Activities activity in activity)
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.run_circle_outlined),
                          title: Text(activity.sportActivity,
                              style: Theme.of(context).textTheme.titleLarge),
                          subtitle: Text(
                              '${activity.dateActivity} , ${activity.timeActivity}'),
                          trailing: Text(
                              '${activity.distanceActivity.toStringAsFixed(3)} Km',
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 5),
                Center(
                  child: CircularPercentIndicator(
                    radius: 70.0,
                    lineWidth: 14.0,
                    percent: 0.7,
                    center: const Text(
                      "70.0%",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    progressColor: Colors.blue,
                    footer: const Text('Objetivo mensual'),
                    animation: true,
                    animationDuration: 1200,
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );

  }
}

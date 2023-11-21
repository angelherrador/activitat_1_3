class Activities {
  final String sportActivity;
  String dateActivity;
  String timeActivity;
  double distanceActivity;

  Activities({
    required this.sportActivity,
    required this.dateActivity,
    required this.timeActivity,
    this.distanceActivity = 0,
  });
}

final List<Activities> activity = [
  Activities(
      sportActivity: "Running",
      dateActivity: "Yesterday",
      timeActivity: "18:20",
      distanceActivity: 7.310),
  Activities(
      sportActivity: "Running",
      dateActivity: "15/10/2022",
      timeActivity: "13:45",
      distanceActivity: 6.550),
  Activities(
      sportActivity: "Running",
      dateActivity: "10/10/2022",
      timeActivity: "19:02",
      distanceActivity: 7.300),
];

const String imageProfile = 'https://randomuser.me/api/portraits/women/44.jpg';

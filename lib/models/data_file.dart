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

const String imageProfile = 'https://randomuser.me/api/portraits/women/44.jpg';

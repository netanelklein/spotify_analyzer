List<int> msToTime(int ms) {
  int seconds = (ms / 1000).round();
  int minutes = (seconds / 60).floor();
  seconds = seconds % 60;
  int hours = (minutes / 60).floor();
  minutes = minutes % 60;
  int days = (hours / 24).floor();
  hours = hours % 24;
  return [days, hours, minutes, seconds];
}

String msToTimeString(int ms) {
  List<int> time = msToTime(ms);
  if (time[0] > 0) {
    return '${time[0]} days, ${time[1]} hours, ${time[2]} minutes and ${time[3]} seconds';
  } else if (time[1] > 0) {
    return '${time[1]} hours, ${time[2]} minutes and ${time[3]} seconds';
  } else if (time[2] > 0) {
    return '${time[2]} minutes and ${time[3]} seconds';
  } else {
    return '${time[3]} seconds';
  }
}

String msToTimeStringShort(int ms) {
  List<int> time = msToTime(ms);
  if (time[0] > 0) {
    return '${time[0]} days and ${time[1]}:${time[2].toString().padLeft(2, '0')}:${time[3].toString().padLeft(2, '0')} hours';
  } else if (time[1] > 0) {
    return '${time[1]}:${time[2].toString().padLeft(2, '0')}:${time[3].toString().padLeft(2, '0')} hours';
  } else if (time[2] > 0) {
    return '${time[2].toString().padLeft(2, '0')}:${time[3].toString().padLeft(2, '0')} minutes';
  } else {
    return '${time[3].toString().padLeft(2, '0')} seconds';
  }
}

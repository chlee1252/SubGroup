String greeting() {
  var hour = DateTime.now().hour;

  if (hour >= 5 && hour < 12) return 'Morning';
  if (hour >= 12 && hour < 17) return 'Afternoon';
  return 'Evening';
}
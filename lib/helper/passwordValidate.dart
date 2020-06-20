bool passwordValidate(String value) {
  /*
  Minimum 1 Upper Case
  Minimum 1 lower Case
  Minimum 1 Numeric Number
  Minimum 1 Special Character
   */
  String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = new RegExp(pattern);
  return regex.hasMatch(value);

}
class AddStudentModel {
  final String S_NAME;
  final String BDATE;
  final String INSTROMENT;
  final String S_MOBILE;
  final String S_EMAIL;
  final String GENDER;
  final String AGE;

  AddStudentModel(
      {required this.S_NAME,
      required this.BDATE,
      required this.INSTROMENT,
      required this.S_MOBILE,
      required this.S_EMAIL,
      required this.GENDER,
      required this.AGE});

  factory AddStudentModel.fromJson(jsonData) {
    return AddStudentModel(
        S_NAME: jsonData['S_NAME'] ?? '',
        BDATE: jsonData['BDATE'] ?? '',
        INSTROMENT: jsonData['INSTROMENT'] ?? '',
        S_MOBILE: jsonData['S_MOBILE'] ?? '',
        S_EMAIL: jsonData['S_EMAIL'] ?? '',
        GENDER: jsonData['GENDER'] ?? '',
        AGE: jsonData['AGE'] ?? '');
  }
}

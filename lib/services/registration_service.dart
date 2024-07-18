import 'package:natacademy/heper/api.dart';
import 'package:natacademy/models/add_student_model.dart';

class RegistrationService {
  Future<AddStudentModel> registration({
    required String s_name,
    required String bdate,
    required String instroment,
    required String s_mobile,
    required String s_email,
    required String gender,
    required String age,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://www.mescairo.com/app/nat', body: {
      'name': s_name,
      'bdate': bdate,
      'instroment': instroment,
      'mobile': s_mobile,
      'email': s_email,
      'gender': gender,
      'age': age,
    });
    return AddStudentModel.fromJson(data);
  }
}

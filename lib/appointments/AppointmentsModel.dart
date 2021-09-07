import '../../BaseModel.dart';

class Appointment {
  late int id;
  late String title;
  late String description;
  String? apptDate;
  String? apptTime;
  String toString() {
    return "{ id=$id, title=$title}, "
        "apptDate=$apptDate, apptTime=$apptTime }";
  }
  // Appointment(this.id, this.title, this.description, this.apptDate, this.apptTime)
}

class AppointmentsModel extends BaseModel {
  String? apptTime;
  void setApptTime(String inApptTime) {
    apptTime = inApptTime;
    notifyListeners();
  }
}

AppointmentsModel appointmentsModel = AppointmentsModel();
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServire {
  Future addEmployeedDetails(
      Map<String, dynamic> employeedInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection('Employee')
        .doc(id)
        .set(employeedInfoMap);
  }

  Future<Stream<QuerySnapshot>> getEmployeedDetails() async {
    return FirebaseFirestore.instance.collection('Employee').snapshots();
  }

  Future updateEmployeedDetails(
      Map<String, dynamic> upDateEmployeedInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection('Employee')
        .doc(id)
        .update(upDateEmployeedInfoMap);
  }

  Future deleteEmployeedDetails(String id) async {
    return await FirebaseFirestore.instance
        .collection('Employee')
        .doc(id)
        .delete();
  }
}

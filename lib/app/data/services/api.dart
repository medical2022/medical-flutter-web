import 'package:cloud_firestore/cloud_firestore.dart';

class Api {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String path;
  late CollectionReference ref;

  Api(this.path) {
    ref = _db.collection(path);
  }
  void save(Object data) async {
    final docu = ref.doc();
    await docu.set(data);
  }

  Future<QuerySnapshot> getDataCollection() {
    return ref.get();
  }

  Future<QuerySnapshot> getDataCollectionId(String id, String collection) {
    return ref.doc(id).collection(collection).get();
  }

  Stream<QuerySnapshot> streamDataCollection() {
    return ref.snapshots();
  }

  Future<DocumentSnapshot> getDocumentById(String id) {
    return ref.doc(id).get();
  }

  Future<DocumentSnapshot> getDocumentByIdDoc(String id,String collection ,String idDoc) {
    return ref.doc(id).collection(collection).doc(idDoc).get();
  }
  Future<void> removeDocument(String id) {
    return ref.doc(id).delete();
  }

  Future<DocumentReference> addDocument(Map data) {
    return ref.add(data);
  }
  Future<void> addDocumentCollection(String id,String collection,String idDoc,Map<String,dynamic> data) {
    return ref.doc(id).collection(collection).doc(idDoc).set(data);
  }

  Future<void> addDocumentWithId(String id, Object data) {
    return ref.doc(id).set(data);
  }

  Future<void> updateDocument(Map<String, Object> data, String id) {
    return ref.doc(id).update(data);
  }

  Future<QuerySnapshot> getWhere(String key, String value) {
    return ref.where(key, isEqualTo: value).get();
  }
  Future<QuerySnapshot> getCollectionWhere(String id,String collection,String key, bool value) {
    return ref.doc(id).collection(collection).where(key, isEqualTo: value).get();
  }

  Future<QuerySnapshot> getWhereWhere(
      String key1, String value1, String key2, String value2) {
    return ref
        .where(key1, isEqualTo: value1)
        .where(key2, isEqualTo: value2)
        .get();
  }

  Future<QuerySnapshot> orderBy(String key) {
    return ref.orderBy(key, descending: true).get();
  }
}

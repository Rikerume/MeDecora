import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PublicoesRecord extends FirestoreRecord {
  PublicoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_photo" field.
  String? _postPhoto;
  String get postPhoto => _postPhoto ?? '';
  bool hasPostPhoto() => _postPhoto != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "post_photo2" field.
  String? _postPhoto2;
  String get postPhoto2 => _postPhoto2 ?? '';
  bool hasPostPhoto2() => _postPhoto2 != null;

  void _initializeFields() {
    _postPhoto = snapshotData['post_photo'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _postPhoto2 = snapshotData['post_photo2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('publicoes');

  static Stream<PublicoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PublicoesRecord.fromSnapshot(s));

  static Future<PublicoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PublicoesRecord.fromSnapshot(s));

  static PublicoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PublicoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PublicoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PublicoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PublicoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PublicoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPublicoesRecordData({
  String? postPhoto,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  String? postPhoto2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_photo': postPhoto,
      'post_description': postDescription,
      'post_user': postUser,
      'time_posted': timePosted,
      'post_photo2': postPhoto2,
    }.withoutNulls,
  );

  return firestoreData;
}

class PublicoesRecordDocumentEquality implements Equality<PublicoesRecord> {
  const PublicoesRecordDocumentEquality();

  @override
  bool equals(PublicoesRecord? e1, PublicoesRecord? e2) {
    return e1?.postPhoto == e2?.postPhoto &&
        e1?.postDescription == e2?.postDescription &&
        e1?.postUser == e2?.postUser &&
        e1?.timePosted == e2?.timePosted &&
        e1?.postPhoto2 == e2?.postPhoto2;
  }

  @override
  int hash(PublicoesRecord? e) => const ListEquality().hash([
        e?.postPhoto,
        e?.postDescription,
        e?.postUser,
        e?.timePosted,
        e?.postPhoto2
      ]);

  @override
  bool isValidKey(Object? o) => o is PublicoesRecord;
}

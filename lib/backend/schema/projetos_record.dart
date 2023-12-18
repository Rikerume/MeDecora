import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjetosRecord extends FirestoreRecord {
  ProjetosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _imagem = snapshotData['imagem'] as String?;
    _nome = snapshotData['nome'] as String?;
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projetos');

  static Stream<ProjetosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjetosRecord.fromSnapshot(s));

  static Future<ProjetosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjetosRecord.fromSnapshot(s));

  static ProjetosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjetosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjetosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjetosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjetosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjetosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjetosRecordData({
  String? imagem,
  String? nome,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagem': imagem,
      'nome': nome,
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjetosRecordDocumentEquality implements Equality<ProjetosRecord> {
  const ProjetosRecordDocumentEquality();

  @override
  bool equals(ProjetosRecord? e1, ProjetosRecord? e2) {
    return e1?.imagem == e2?.imagem &&
        e1?.nome == e2?.nome &&
        e1?.descricao == e2?.descricao;
  }

  @override
  int hash(ProjetosRecord? e) =>
      const ListEquality().hash([e?.imagem, e?.nome, e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is ProjetosRecord;
}

import 'package:banking_clone/model/exception/custom_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  static final _collection =
      FirebaseFirestore.instance.collection('users').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          );

  final String uid;
  final String fullName;
  final String email;
  final bool emailVerified;
  final bool isSuperUser;
  final bool isActive;
  final Timestamp? createdOn;
  final String? createdByName;
  final DocumentReference? createdBy;
  final Timestamp? updatedOn;
  final String? updatedByName;
  final DocumentReference? updatedBy;
  final DocumentReference ref;

  const User({
    required this.uid,
    required this.fullName,
    required this.email,
    required this.emailVerified,
    required this.isSuperUser,
    required this.isActive,
    this.createdOn,
    this.createdByName,
    this.createdBy,
    this.updatedOn,
    this.updatedByName,
    this.updatedBy,
    required this.ref,
  });

  User copyWith({
    final String? fullName,
    final bool? isActive,
    final bool? isSuperUser,
    final Timestamp? createdOn,
    final String? createdByName,
    final DocumentReference? createdBy,
    final Timestamp? updatedOn,
    final String? updatedByName,
    final DocumentReference? updatedBy,
    final List<DocumentReference>? markets,
    final List<DocumentReference>? types,
  }) {
    return User(
      uid: uid,
      fullName: fullName ?? this.fullName,
      email: email,
      emailVerified: emailVerified,
      isSuperUser: isSuperUser ?? this.isSuperUser,
      isActive: isActive ?? this.isActive,
      createdOn: createdOn,
      createdByName: createdByName,
      createdBy: createdBy,
      updatedOn: updatedOn ?? this.updatedOn,
      updatedByName: updatedByName ?? this.updatedByName,
      updatedBy: updatedBy ?? this.updatedBy,
      ref: ref,
    );
  }

  factory User.fromSnapshot(DocumentSnapshot<Map<String, dynamic>?> snapshot) {
    final data = snapshot.data();

    if (data == null) throw CustomException('Not implemented');

    return User(
      createdOn: data['createdOn'],
      fullName: data['fullName'],
      email: data['email'],
      uid: data['uid'],
      emailVerified: data['emailVerified'],
      isSuperUser: data['isSuperUser'] ?? false,
      isActive: data['isActive'],
      createdByName: data['createdByName'],
      createdBy: data['createdBy'],
      updatedOn: data['updatedOn'],
      updatedByName: data['updatedByName'],
      updatedBy: data['updatedBy'],
      ref: snapshot.reference,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'uid': uid,
      'fullName': fullName,
      'email': email,
      'emailVerified': emailVerified,
      'isSuperUser': isSuperUser,
      'isActive': isActive,
      'createdOn': createdOn,
      'createdByName': createdByName,
      'createdBy': createdBy,
      'updatedOn': updatedOn,
      'updatedByName': updatedByName,
      'updatedBy': updatedBy,
    };
  }

  static User _fromFirestore(
    DocumentSnapshot<Map<String, dynamic>?> snapshot,
    SnapshotOptions? options,
  ) =>
      User.fromSnapshot(snapshot);

  static Map<String, Object?> _toFirestore(
    User user,
    SetOptions? options,
  ) =>
      user.toFirestore();

  static Stream<DocumentSnapshot<User?>> snapshot(String uid) =>
      _collection.doc(uid).snapshots();

  static Stream<QuerySnapshot<User>> snapshots() => _collection.snapshots();

  Future<DocumentSnapshot<Object?>> save() async {
    DocumentReference<Object?>? resultRef = ref;
    await _collection.doc(ref.id).set(this);

    return await resultRef.get();
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        fullName.hashCode ^
        email.hashCode ^
        emailVerified.hashCode ^
        isSuperUser.hashCode ^
        isActive.hashCode ^
        (createdOn?.hashCode ?? 0) ^
        createdByName.hashCode ^
        createdBy.hashCode ^
        (updatedOn?.hashCode ?? 0) ^
        updatedByName.hashCode ^
        updatedBy.hashCode ^
        ref.hashCode;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          hashCode == other.hashCode;
}

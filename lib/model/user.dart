// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String id; //아이디
  String collectionId; //컬렉션 아이디
  String collectionName; //컬렉션 이름
  DateTime created; //생성 날짜
  DateTime updated; //업데이트 날짜
  String username; //유저 이름
  bool verified; //인증 여부
  bool emailVisibility; //이미지 가시성
  String email; //이메일
  String? name; //이름
  String? avatar; //아바타

  User({
    required this.id,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.updated,
    required this.username,
    required this.verified,
    required this.emailVisibility,
    required this.email,
    this.name,
    this.avatar,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: DateTime.parse(map['created']),
      updated: DateTime.parse(map['updated']),
      username: map['username'] as String,
      verified: map['verified'] as bool,
      emailVisibility: map['emailVisibility'] as bool,
      email: map['email'] as String,
      name: map['name'] != '' ? map['name'] as String : null,
      avatar: map['avatar'] != '' ? map['avatar'] as String : null,
    );
  }
}

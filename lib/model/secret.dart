// ignore_for_file: public_member_api_docs, sort_constructors_first
class Secret {
  String id; //아이디
  String collectionId; //컬렉션 아이디
  String collectionName; //컬렉션 이름
  DateTime created; //생성 날짜
  DateTime updated; //업데이트 날짜
  String secret; //비밀 텍스트
  String? author; //작성자(user record id)
  String? authorName; //작성자이름(닉네임)

  Secret({
    required this.id,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.updated,
    required this.secret,
    this.author,
    this.authorName,
  });

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: DateTime.parse(map['created']),
      updated: DateTime.parse(map['updated']),
      secret: map['secret'] as String,
      author: map['author'] != '' ? map['author'] as String : null,
      authorName: map['authorName'] != '' ? map['authorName'] as String : null,
    );
  }
}

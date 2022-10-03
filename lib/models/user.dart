
class User{

  late String login;
  late String id;
  late String url;
  late String create;
  late String update;

  Map<String,dynamic> toJson() => {
    'login':login,
    'id':id,
    'url':url,
    'create':create,
    'update':update,

  };

  User.fromJson(Map<String,dynamic> json)
      : login = json["login"],
        id = json["id"],
        url = json['url'],
        create = json['create'],
        update = json['update'];
}
class ModelPushDataUser{
  late String name,email,password,phone;
  ModelPushDataUser();
  ModelPushDataUser.FromJson(Map<String,dynamic>map){
    this.name = map['name'];
    this.email = map['email'];
    this.password = map['password'];
    this.phone = map['phone'];
  }
  Map<String,dynamic> toJson(){
    Map<String,dynamic> tmp = <String,dynamic>{};
    tmp['name'] = this.name;
    tmp['email'] = this.email;
    tmp['password'] = this.password;
    tmp['phone'] = this.phone;
    return tmp;
  }
}
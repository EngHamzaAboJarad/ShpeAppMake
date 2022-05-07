class ModelCategory{
  late String image,name_ar,name_en;
  ModelCategory();
  ModelCategory.FromJson(Map<String,dynamic> map){
    this.image = map['image'];
    this.name_ar = map['name_ar'];
    this.name_en = map['name_en'];
  }
}
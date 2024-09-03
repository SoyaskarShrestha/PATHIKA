
class UserModel{
  String? id;
  String? fullName;
  int? phoneNumber;
  String? address;
  UserModel({this.id,this.fullName,this.phoneNumber,this.address});
  ///This function is used to convert flutter model object to firebase readable json
  toJson(){
    return{
      'id':id,
      'full_name':fullName,
      'phoneNumber':phoneNumber,
      'address':address,
    };
  }
  factory UserModel.fromJson(documentSnapshot){
    final data=documentSnapshot.data();
    return UserModel(
      id: data['id'],
      fullName: data['full_name'],
      phoneNumber: data['phoneNumber'],
      address: data['address'],
    );
  }
}

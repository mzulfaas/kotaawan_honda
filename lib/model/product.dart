class Product {
  int status;
  List<Data> data;

  Product({this.status, this.data});

  Product.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String name;
  String price;
  String promo;
  String img;
  String description;
  String date;

  Data(
      {this.id,
        this.name,
        this.price,
        this.promo,
        this.img,
        this.description,
        this.date});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    promo = json['promo'];
    img = json['img'];
    description = json['description'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['promo'] = this.promo;
    data['img'] = this.img;
    data['description'] = this.description;
    data['date'] = this.date;
    return data;
  }
}
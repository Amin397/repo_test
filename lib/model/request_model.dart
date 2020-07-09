
class Request {
  Request({
    this.target,
    this.ok,
    this.result,
  });

  String target;
  bool ok;
  Result result;

  factory Request.fromJson(Map<String, dynamic> json) => Request(
    target: json["target"],
    ok: json["ok"],
    result: Result.fromJson(json["result"]),
  );

  Request.fromMap(Map<String , dynamic> map){
    target = map['target'];
    ok = map['ok'];
    result = map['result'];
  }
}

class Result {
  Result({
    this.isFault,
    this.isDamaged,
    this.date,
    this.time,
    this.lat,
    this.lon,
    this.address,
    this.accident,
    this.customer,
    this.car,
    this.insurance,
  });

  bool isFault;
  bool isDamaged;
  String date;
  String time;
  String lat;
  String lon;
  String address;
  String accident;
  Customer customer;
  Car car;
  Insurance insurance;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    isFault: json["isFault"],
    isDamaged: json["isDamaged"],
    date: json["date"],
    time: json["time"],
    lat: json["lat"],
    lon: json["lon"],
    address: json["address"],
    accident: json["accident"],
    customer: Customer.fromJson(json["customer"]),
    car: Car.fromJson(json["car"]),
    insurance: Insurance.fromJson(json["insurance"]),
  );

  Result.fromMap(Map<String , dynamic> map){
    isFault = map['isFault'];
    isDamaged = map['isDamaged'];
    date = map['date'];
    time = map['time'];
    lat = map['lat'];
    lon = map['lon'];
    address = map['address'];
    accident = map['accident'];
    customer = map['customer'];
    car = map['car'];
    insurance = map['insurance'];
  }
}

class Car {
  Car({
    this.carIs,
    this.productionDate,
    this.vinNumber,
    this.color,
    this.brand,
    this.name,
    this.model,
  });

  bool carIs;
  String productionDate;
  String vinNumber;
  String color;
  String brand;
  String name;
  dynamic model;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    carIs: json["is"],
    productionDate: json["productionDate"],
    vinNumber: json["vinNumber"],
    color: json["color"],
    brand: json["brand"],
    name: json["name"],
    model: json["model"],
  );

  Car.fromMap(Map<String , dynamic> map){
    carIs = map['is'];
    productionDate = map['productionDate'];
    vinNumber = map['vinNumber'];
    color = map['color'];
    brand = map['brand'];
    name = map['name'];
    model = map['model'];
  }
}

class Customer {
  Customer({
    this.customerIs,
    this.fname,
    this.lname,
    this.mobile,
    this.nationalCode,
    this.avatar,
  });

  bool customerIs;
  String fname;
  String lname;
  String mobile;
  String nationalCode;
  String avatar;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    customerIs: json["is"],
    fname: json["fname"],
    lname: json["lname"],
    mobile: json["mobile"],
    nationalCode: json["nationalCode"],
    avatar: json["avatar"],
  );

  Customer.fromMap(Map<String , dynamic> map){
    customerIs = map['is'];
    fname = map['fname'];
    lname = map['lname'];
    mobile = map['mobile'];
    nationalCode = map['nationalCode'];
    avatar = map['avatar'];
  }
}

class Insurance {
  Insurance({
    this.insuranceIs,
    this.start,
    this.end,
    this.endError,
    this.company,
    this.branch,
  });

  bool insuranceIs;
  String start;
  String end;
  bool endError;
  String company;
  String branch;

  factory Insurance.fromJson(Map<String, dynamic> json) => Insurance(
    insuranceIs: json["is"],
    start: json["start"],
    end: json["end"],
    endError: json["endError"],
    company: json["company"],
    branch: json["branch"],
  );

  Insurance.fromMap(Map<String , dynamic> map){
    insuranceIs = map['is'];
    start = map['start'];
    end = map['end'];
    endError = map['endError'];
    company = map['company'];
    branch = map['branch'];
  }
}

class RequestModel {
  String target;
  bool ok;
  Result result;

  RequestModel({this.target, this.ok, this.result});

  RequestModel.fromJson(Map<String, dynamic> json) {
    target = json['target'];
    ok = json['ok'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }
}

class Result {
  bool isFault;
  bool isDamaged;
  String date;
  String time;
  String lat;
  String lon;
  String accident;
  String address;
  Customer customer;
  Car car;
  Insurance insurance;

  Result(
      {this.isFault,
      this.isDamaged,
      this.date,
      this.time,
      this.lat,
      this.lon,
      this.accident,
        this.address,
      this.customer,
      this.car,
      this.insurance});

  Result.fromJson(Map<String, dynamic> json) {
    isFault = json['isFault'];
    isDamaged = json['isDamaged'];
    date = json['date'];
    time = json['time'];
    lat = json['lat'];
    lon = json['lon'];
    accident = json['accident'];
    address = json['address'];
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    car = json['car'] != null ? new Car.fromJson(json['car']) : null;
    insurance = json['insurance'] != null
        ? new Insurance.fromJson(json['insurance'])
        : null;
  }
}

class Customer {
  bool is_;
  String fname;
  String lname;
  String mobile;

  String nationalCode;
  String avatar;

  Customer(
      {this.is_,
      this.fname,
      this.lname,
      this.mobile,
      this.nationalCode,
      this.avatar});

  Customer.fromJson(Map<String, dynamic> json) {
    is_ = json['is'];
    fname = json['fname'];
    lname = json['lname'];
    mobile = json['mobile'];
    nationalCode = json['nationalCode'];
    avatar = json['avatar'];
  }
}

class Car {
  bool is_;
  String productionDate;
  String vinNumber;
  String color;
  String brand;
  String name;
  String model;

  Car(
      {this.is_,
      this.productionDate,
      this.vinNumber,
      this.color,
      this.brand,
      this.name,
      this.model});

  Car.fromJson(Map<String, dynamic> json) {
    is_ = json['is'];
    productionDate = json['productionDate'];
    vinNumber = json['vinNumber'];
    color = json['color'];
    brand = json['brand'];
    name = json['name'];
    model = json['model'];
  }
}

class Insurance {
  bool is_;
  String start;
  String end;
  bool endError;
  String company;
  String branch;

  Insurance(
      {this.is_,
      this.start,
      this.end,
      this.endError,
      this.company,
      this.branch});

  Insurance.fromJson(Map<String, dynamic> json) {
    is_ = json['is'];
    start = json['start'];
    end = json['end'];
    endError = json['endError'];
    company = json['company'];
    branch = json['branch'];
  }
}

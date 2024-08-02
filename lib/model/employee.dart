class Employee {
  Employee({
    required this.users,
    required this.total,
    required this.skip,
    required this.limit,
  });

  final User users;
  final int total;
  final int skip;
  final int limit;

  factory Employee.fromJson(Map<String, dynamic> json){
    return Employee(
      // users: json["users"] == null ? [] : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
      users:User.fromJson(json['users']) ,
      total: json["total"],
      skip: json["skip"],
      limit: json["limit"],
    );
  }

}

class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hair,
    required this.ip,
    required this.address,
    required this.macAddress,
    required this.university,
    required this.bank,
    required this.company,
    required this.ein,
    required this.ssn,
    required this.userAgent,
    required this.crypto,
    required this.role,
  });

  final int id;
  final String firstName;
  final String lastName;
  final String?maidenName;
  final int age;
  final String gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final double height;
  final num weight;
  final String eyeColor;
  final Hair hair;
  final String ip;
  final Address address;
  final String macAddress;
  final String university;
  final Bank bank;
  final Company company;
  final String ein;
  final String ssn;
  final String userAgent;
  final Crypto crypto;
  final String role;

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json["id"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      maidenName: json["maidenName"],
      age: json["age"],
      gender: json["gender"],
      email: json["email"],
      phone: json["phone"],
      username: json["username"],
      password: json["password"],
      birthDate: json["birthDate"],
      image: json["image"],
      bloodGroup: json["bloodGroup"],
      height: json["height"],
      weight: json["weight"],
      eyeColor: json["eyeColor"],
     hair: Hair.fromJson(json['hair']),
     // hair: json["hair"] == null ? null : Hair.fromJson(json["hair"]),
      ip: json["ip"],
      address: Address.fromJson(json['address']),
      //address: json["address"] == null ? null : Address.fromJson(json["address"]),
      macAddress: json["macAddress"],
      university: json["university"],
      bank: Bank.fromJson(json['bank']),
     // bank: json["bank"] == null ? null : Bank.fromJson(json["bank"]),
      company: Company.fromJson(json['company']),
      //company: json["company"] == null ? null : Company.fromJson(json["company"]),
      ein: json["ein"],
      ssn: json["ssn"],
      userAgent: json["userAgent"],
      crypto: Crypto.fromJson(json['crypto']),
     // crypto: json["crypto"] == null ? null : Crypto.fromJson(json["crypto"]),
      role: json["role"],
    );
  }

}

class Address {
  Address({
    required this.address,
    required this.city,
    required this.state,
    required this.stateCode,
    required this.postalCode,
    required this.coordinates,
    required this.country,
  });

  final String address;
  final String city;
  final String state;
  final String stateCode;
  final String postalCode;
  final Coordinates coordinates;
  final String country;

  factory Address.fromJson(Map<String, dynamic> json){
    return Address(
      address: json["address"],
      city: json["city"],
      state: json["state"],
      stateCode: json["stateCode"],
      postalCode: json["postalCode"],
      coordinates: Coordinates.fromJson(json['coordinates']),
    //  coordinates: json["coordinates"] == null ? null : Coordinates.fromJson(json["coordinates"]),
      country: json["country"],
    );
  }

}

class Coordinates {
  Coordinates({
    required this.lat,
    required this.lng,
  });

  final double lat;
  final double lng;

  factory Coordinates.fromJson(Map<String, dynamic> json){
    return Coordinates(
      lat: json["lat"],
      lng: json["lng"],
    );
  }

}

class Bank {
  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  final String cardExpire;
  final String cardNumber;
  final String cardType;
  final String currency;
  final String iban;

  factory Bank.fromJson(Map<String, dynamic> json){
    return Bank(
      cardExpire: json["cardExpire"],
      cardNumber: json["cardNumber"],
      cardType: json["cardType"],
      currency: json["currency"],
      iban: json["iban"],
    );
  }

}

class Company {
  Company({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });

  final String department;
  final String name;
  final String title;
  final Address address;

  factory Company.fromJson(Map<String, dynamic> json){
    return Company(
      department: json["department"],
      name: json["name"],
      title: json["title"],
     address: Address.fromJson(json['address']),
     // address: json["address"] == null ? null : Address.fromJson(json["address"]),
    );
  }

}

class Crypto {
  Crypto({
    required this.coin,
    required this.wallet,
    required this.network,
  });

  final String coin;
  final String wallet;
  final String network;

  factory Crypto.fromJson(Map<String, dynamic> json){
    return Crypto(
      coin: json["coin"],
      wallet: json["wallet"],
      network: json["network"],
    );
  }

}

class Hair {
  Hair({
    required this.color,
    required this.type,
  });

  final String color;
  final String type;

  factory Hair.fromJson(Map<String, dynamic> json){
    return Hair(
      color: json["color"],
      type: json["type"],
    );
  }

}

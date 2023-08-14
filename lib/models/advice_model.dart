import 'dart:convert';

Advice adviceFromMap(String str) => Advice.fromMap(json.decode(str));

String adviceToMap(Advice data) => json.encode(data.toMap());

class Advice {
    Slip slip;

    Advice({
        required this.slip,
    });

    factory Advice.fromMap(Map<String, dynamic> json) => Advice(
        slip: Slip.fromMap(json["slip"]),
    );

    Map<String, dynamic> toMap() => {
        "slip": slip.toMap(),
    };
}

class Slip {
    int id;
    String advice;

    Slip({
        required this.id,
        required this.advice,
    });

    factory Slip.fromMap(Map<String, dynamic> json) => Slip(
        id: json["id"],
        advice: json["advice"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "advice": advice,
    };
}

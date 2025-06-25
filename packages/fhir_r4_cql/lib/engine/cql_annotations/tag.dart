import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class Tag extends CqlToElmBase {
  String? name;
  String? value;

  Tag({this.name, this.value});

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        if (name != null) 'name': name,
        if (value != null) 'value': value,
      };
}

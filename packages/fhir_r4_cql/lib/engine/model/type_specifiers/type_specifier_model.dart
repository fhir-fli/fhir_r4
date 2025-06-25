import 'package:fhir_r4_cql/fhir_r4_cql.dart';

abstract class TypeSpecifierModel {
  final String? type;
  TypeSpecifierModel({this.type});

  static TypeSpecifierModel fromJson(Map<String, dynamic> map) {
    final type = map['type'];
    switch (type) {
      case 'BoundParameterSpecifier':
        return BoundParameterTypeSpecifierModel.fromJson(map);
      case 'ChoiceTypeSpecifier':
        return ChoiceTypeSpecifierModel.fromJson(map);
      case 'IntervalTypeSpecifier':
        return IntervalTypeSpecifierModel.fromJson(map);
      case 'ListTypeSpecifier':
        return ListTypeSpecifierModel.fromJson(map);
      case 'NamedTypeSpecifier':
        return NamedTypeSpecifierModel.fromJson(map);
      case 'TupleTypeSpecifier':
        return TupleTypeSpecifierModel.fromJson(map);
      case 'ParameterTypeSpecifier':
        return ParameterTypeSpecifierModel.fromJson(map);
      default:
        throw ArgumentError('Unknown type specifier type: $type');
    }
  }

  Map<String, dynamic> toJson() {
    throw UnimplementedError('TypeSpecifierModel.toJson not implemented');
  }
}

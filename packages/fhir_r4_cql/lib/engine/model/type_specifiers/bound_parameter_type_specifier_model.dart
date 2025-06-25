import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents a bound parameter type specifier.
///
/// The [BoundParameterTypeSpecifier] type defines a type replacing a class parameter,
/// including the parameter name, bound type, and elementTypeSpecifier.
class BoundParameterTypeSpecifierModel extends TypeSpecifierModel {
  /// Type bound to the parameter.
  String boundType;

  /// Element type specifier.
  TypeSpecifierModel? elementTypeSpecifier;

  /// Name of the parameter bound to a valid type.
  String parameterName;

  BoundParameterTypeSpecifierModel({
    required this.parameterName,
    required this.boundType,
    this.elementTypeSpecifier,
  });

  BoundParameterTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : parameterName = map['parameterName'],
        boundType = map['boundType'],
        elementTypeSpecifier = map['elementTypeSpecifier'] != null
            ? TypeSpecifierModel.fromJson(map['elementTypeSpecifier'])
            : null,
        super(type: 'BoundParameterTypeSpecifier');

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'BoundParameterTypeSpecifier',
      'parameterName': parameterName,
      'boundType': boundType,
    };
    if (elementTypeSpecifier != null) {
      map['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }
    return map;
  }
}

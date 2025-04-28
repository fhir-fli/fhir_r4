import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Represents a parameter type specifier.
///
/// The [ParameterTypeSpecifier] type specifies a generic class parameter,
/// including its parameter name.
class ParameterTypeSpecifierModel extends TypeSpecifierModel {
  /// Name of the parameter.
  QName parameterName;

  ParameterTypeSpecifierModel({
    required String parameterName,
  }) : parameterName = QName.fromFull(parameterName);

  ParameterTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : parameterName = QName.fromFull(map['parameterName']),
        super(type: 'ParameterTypeSpecifier');

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'ParameterTypeSpecifier',
      'parameterName': parameterName.toString(),
    };
  }
}

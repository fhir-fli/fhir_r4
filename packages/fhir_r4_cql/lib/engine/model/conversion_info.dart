import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Contains information regarding data conversions.
///
/// The [ConversionInfo] type includes specifications for data conversions,
/// such as source and target types, and the conversion function name.
class ConversionInfo {
  // Optional attribute - Source type as string
  final String? fromType;

  // Optional element - Type specifier for the source type
  final TypeSpecifierModel? fromTypeSpecifier;

  // Required attribute - Name of the function for conversion
  final String functionName;

  // Optional attribute - Target type as string
  final String? toType;

  // Optional element - Type specifier for the target type
  final TypeSpecifierModel? toTypeSpecifier;

  ConversionInfo({
    required this.functionName,
    this.fromTypeSpecifier,
    this.toTypeSpecifier,
    this.fromType,
    this.toType,
  });

  factory ConversionInfo.fromJson(Map<String, dynamic> json) {
    return ConversionInfo(
      functionName: json['functionName'],
      fromTypeSpecifier: json['fromTypeSpecifier'] == null
          ? null
          : TypeSpecifierModel.fromJson(json['fromTypeSpecifier']),
      toTypeSpecifier: json['toTypeSpecifier'] == null
          ? null
          : TypeSpecifierModel.fromJson(json['toTypeSpecifier']),
      fromType: json['fromType'],
      toType: json['toType'],
    );
  }

  @override
  String toString() {
    return 'ConversionInfo{functionName: $functionName, fromTypeSpecifier: $fromTypeSpecifier, toTypeSpecifier: $toTypeSpecifier, fromType: $fromType, toType: $toType}';
  }

  Map<String, dynamic> toJson() => {
        'functionName': functionName,
        if (fromTypeSpecifier != null)
          'fromTypeSpecifier': fromTypeSpecifier!.toJson(),
        if (toTypeSpecifier != null)
          'toTypeSpecifier': toTypeSpecifier!.toJson(),
        if (fromType != null) 'fromType': fromType,
        if (toType != null) 'toType': toType,
      };
}

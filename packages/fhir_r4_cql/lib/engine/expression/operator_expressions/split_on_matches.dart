import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to split a string into a list of strings using matches of a regex pattern.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator pattern,
/// the result is a list of strings containing one element that is the input value of the stringToSplit argument.
class SplitOnMatches extends OperatorExpression {
  final CqlExpression separatorPattern;
  final CqlExpression stringToSplit;

  SplitOnMatches({
    required this.stringToSplit,
    required this.separatorPattern,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SplitOnMatches.fromJson(Map<String, dynamic> json) => SplitOnMatches(
        stringToSplit: CqlExpression.fromJson(json['stringToSplit']),
        separatorPattern: CqlExpression.fromJson(json['separatorPattern']),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'stringToSplit': stringToSplit.toJson(),
      'separatorPattern': separatorPattern.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'SplitOnMatches';
}

import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to return true if the given string matches the given regular
/// expression pattern.
/// If either argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
/// Signature:
///
/// Matches(argument String, pattern String) Boolean
/// Description:
///
/// The Matches operator returns true if the given string matches the given
/// regular expression pattern. Regular expressions should function
/// consistently, regardless of any culture- and locale-specific settings in
/// the environment, should be case-sensitive, use single line mode, and allow
/// Unicode characters.
///
/// If either argument is null, the result is null.
///
/// Platforms will typically use native regular expression implementations.
/// These are typically fairly similar, but there will always be small
/// differences. As such, CQL does not prescribe a particular dialect, but
/// recommends the use of the PCRE dialect.
///
/// The following examples illustrate the behavior of the Matches operator:
///
/// define "MatchesTrue": Matches('1,2three', '\\d,\\d\\w+')
/// define "MatchesFalse": Matches('1,2three', '\\w+')
/// define "MatchesIsNull": Matches('12three', null)
class Matches extends BinaryExpression {
  Matches({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Matches.fromJson(Map<String, dynamic> json) => Matches(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
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
  String get type => 'Matches';

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  FhirBoolean? execute(Map<String, dynamic> context) {
    if (operand.length != 2) {
      throw ArgumentError('Matches expression must have 2 operands');
    }

    final left = operand[0].execute(context);
    final right = operand[1].execute(context);

    // Check if either operand is null
    if (left == null || right == null) {
      return null;
    } else

    // Ensure operands are strings
    if (left is! String || right is! String) {
      throw ArgumentError('Both operands must be of type String');
    }

    // Adjust the regular expression to ensure it matches the entire string
    // by using start ^ and end $ anchors.
    final regex = RegExp('^$right\$');

    // Return true if the entire string matches the pattern, otherwise false
    return FhirBoolean(regex.hasMatch(left));
  }
}

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to match the given string using the regular expression pattern,
/// replacing each match with the given substitution.
/// The substitution string may refer to identified match groups in the regular
/// expression.
/// If any argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
/// Signature:
///
/// Matches(argument String, pattern String, substitution String) String
/// Description:
///
/// The ReplaceMatches operator matches the given string using the given
/// regular expression pattern, replacing each match with the given
/// substitution. The substitution string may refer to identified match groups
/// in the regular expression. Regular expressions should function consistently,
/// regardless of any culture- and locale-specific settings in the environment,
/// should be case-sensitive, use single line mode, and allow Unicode characters.
///
/// If any argument is null, the result is null.
///
/// Platforms will typically use native regular expression implementations.
/// These are typically fairly similar, but there will always be small
/// differences. As such, CQL does not prescribe a particular dialect, but
/// recommends the use of the [PCRE](http://www.pcre.org) dialect.
///
/// The following examples illustrate the behavior of the ReplaceMatches operator:
///
/// define "ReplaceMatchesFound": ReplaceMatches('ABCDE', 'C', 'XYZ') // 'ABXYZDE'
/// define "ReplaceMatchesNotFound": ReplaceMatches('ABCDE', 'XYZ', '123') // 'ABCDE'
/// define "ReplaceMatchesIsNull": ReplaceMatches('ABCDE', 'C', null) // null
class ReplaceMatches extends TernaryExpression {
  ReplaceMatches({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ReplaceMatches.fromJson(Map<String, dynamic> json) => ReplaceMatches(
        operand: json['operand'] != null
            ? (json['operand'] as List)
                .map((e) => CqlExpression.fromJson(e))
                .toList()
            : [],
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
      'operand': operand.map((e) => e.toJson()).toList(),
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
  String get type => 'ReplaceMatches';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['String'];

  @override
  Future<String?> execute(Map<String, dynamic> context) async {
    if (operand.length != 3) {
      throw ArgumentError('Ternary expression must have 3 operands');
    }

    final argument = await operand[0].execute(context);
    final pattern = await operand[1].execute(context);
    final substitution = await operand[2].execute(context);

    // Check if either operand is null
    if (argument == null || pattern == null || substitution == null) {
      return null;
    } else

    // Ensure operands are strings
    if (argument is! String || pattern is! String || substitution is! String) {
      throw ArgumentError('Both operands must be of type String');
    }

    return argument.replaceAllMapped(RegExp(pattern), (match) => substitution);
  }
}

import '../../../cql.dart';

/// Operator to combine a list of strings, optionally separating each string
/// with the given separator.
/// If either argument is null, the result is null. If the source list is empty,
/// the result is an empty string ('').
/// For consistency with aggregate operator behavior, null elements in the input
/// list are ignored.
/// Signature:
///
/// Combine(source List<String>) String
/// Combine(source List<String>, separator String) String
/// Description:
///
/// The Combine operator combines a list of strings, optionally separating each
/// string with the given separator.
///
/// If either argument is null, or the source list is empty, the result is null.
///
/// For consistency with aggregate operator behavior, null elements in the input
/// list are ignored.
///
/// The following examples illustrate the behavior of the Combine operator:
///
/// define "CombineList": Combine({ 'A', 'B', 'C' }) // 'ABC'
/// define "CombineWithSeparator": Combine({ 'A', 'B', 'C' }, ' ') // 'A B C'
/// define "CombineWithNulls": Combine({ 'A', 'B', 'C', null }) // 'ABC'
class Combine extends OperatorExpression {
  final CqlExpression? separator;
  final CqlExpression source;

  Combine({
    required this.source,
    this.separator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Combine.fromJson(Map<String, dynamic> json) => Combine(
        source: CqlExpression.fromJson(json['source']!),
        separator: json['separator'] == null
            ? null
            : CqlExpression.fromJson(json['separator']),
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
      'source': source.toJson(),
    };

    if (separator != null) {
      data['separator'] = separator!.toJson();
    }
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
  String get type => 'Combine';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['String'];

  @override
  String? execute(Map<String, dynamic> context) {
    final sourceValue = source.execute(context);
    final separatorValue = separator?.execute(context);
    return combine(sourceValue, separatorValue);
  }

  String? combine(dynamic sourceValue, dynamic separatorValue) {
    if (sourceValue == null) {
      return null;
    } else if (sourceValue is List) {
      if (sourceValue.isEmpty) {
        return null;
      }
      sourceValue.removeWhere((element) => element == null);
      if (sourceValue.every((element) => element is String)) {
        return sourceValue.join(separatorValue ?? '');
      }
    }
    throw ArgumentError('Invalid argument for Combine operator');
  }
}

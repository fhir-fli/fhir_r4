import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to check if the first operand contains the second operand.
/// Returns true if the given point is greater than or equal to the starting
/// point of the interval and less than or equal to the ending point of the
/// interval.
/// For open interval boundaries, exclusive comparison operators are used. For
/// closed interval boundaries, if the interval boundary is null, the result of
/// the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is false. If the second argument
/// is null, the result is null.
///
/// Signature:
///
/// contains _precision_ (argument Interval<T>, point T) Boolean
/// Description:
///
/// The contains operator for intervals returns true if the given point is
/// equal to the starting or ending point of the interval, or greater than the
/// starting point and less than the ending point. For open interval boundaries,
/// exclusive comparison operators are used. For closed interval boundaries, if
/// the interval boundary is null, the result of the boundary comparison is
/// considered true.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
/// precision.
///
/// If the first argument is null, the result is false. If the second argument
/// is null, the result is null.
///
/// The following examples illustrate the behavior of the contains operator:
///
/// define "ContainsIsTrue": Interval[1, 5] contains 4
/// define "ContainsIsFalse": Interval[1, 5] contains 6
/// define "ContainsIsNull": Interval[1, 5] contains null
///
/// Signature:
///
/// contains(argument List<T>, element T) Boolean
/// Description:
///
/// The contains operator for lists returns true if the given element is in the
/// list using equality semantics, with the exception that null elements are
/// considered equal.
///
/// If the first argument is null, the result is false. If the second argument
/// is null, the result is true if the list contains any null elements, and
/// false otherwise.
///
/// The following examples illustrate the behavior of the contains operator:
///
/// define "ContainsIsTrue": { 1, 3, 5, 7 } contains 5
/// define "ContainsIsFalse": { 1, 3, 5, 7 } contains 4
/// define "ContainsIsAlsoFalse": null contains 4
/// define "ContainsNullIsFalse": { 1, 3, 5, 7 } contains null
class Contains extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Contains({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Contains.fromJson(Map<String, dynamic> json) => Contains(
        precision: json['precision'] == null
            ? null
            : CqlDateTimePrecisionExtension.fromJson(json['precision']),
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      if (precision != null) 'precision': precision!.toJson(),
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
  String get type => 'Contains';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Contains expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return contains(left, right);
  }

  static FhirBoolean? contains(dynamic left, dynamic right) {
    if (left == null) {
      return FhirBoolean(false);
    } else if (left is CqlInterval) {
      if (right == null) {
        return null;
      }
      final result = FhirBoolean(left.contains(right));
      return result;
    } else if (left is List) {
      final result = FhirBoolean(left.contains(right));
      return result;
    } else {
      throw ArgumentError(
          'Constains: Left operand must be of type Interval or List');
    }
  }
}

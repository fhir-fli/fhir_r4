import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to check if the first operand completely includes the second operand.
/// Returns true if the starting point of the first interval is less than or
/// equal to the starting point of the second interval, and the ending point of
/// the first interval is greater than or equal to the ending point of the
/// second interval.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
/// includes _precision_ (left Interval<T>, right Interval<T>) Boolean
/// includes _precision_ (left Interval<T>, right T) Boolean
/// Description:
///
/// The includes operator for intervals returns true if the first interval
/// completely includes the second. More precisely, if the starting point of
/// the first interval is less than or equal to the starting point of the second
/// interval, and the ending point of the first interval is greater than or
/// equal to the ending point of the second interval.
///
/// For the point overload, this operator is a synonym for the contains operator.
///
/// For the interval overload, if either argument is null, the result is null.
///
/// This operator uses the semantics described in the Start and End operators
/// to determine interval boundaries.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
/// precision.
///
/// The following examples illustrate the behavior of the includes operator:
///
/// define "IncludesIsTrue": Interval[-1, 5] includes Interval[0, 5]
/// define "IncludesIsFalse": Interval[-1, 5] includes 6
/// define "IncludesIsNull": Interval[-1, 5] includes null
/// Signature:
///
/// includes(left List<T>, right List<T>) Boolean
/// includes(left List<T>, right T) Boolean
/// Description:
///
/// The includes operator for lists returns true if the first list contains
/// every element of the second list using equality semantics, with the
/// exception that null elements are considered equal.
///
/// For the singleton overload, this operator is a synonym for the contains
/// operator.
///
/// For the list overload, if either argument is null, the result is null.
///
/// Note that the order of elements does not matter for the purposes of
/// determining inclusion.
///
/// The following examples illustrate the behavior of the includes operator:
///
/// define "IncludesIsTrue": { 1, 3, 5, 7 } includes 5
/// define "IncludesIsNull": { 1, 3, 5, null } includes null
/// define "IncludesIsFalse": { 1, 3 } includes { 1, 3, 5 }
/// define "IncludesIsAlsoNull": null includes { 1, 3, 5 }
class Includes extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Includes({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Includes.fromJson(Map<String, dynamic> json) => Includes(
        precision: json['precision'] != null
            ? CqlDateTimePrecisionExtension.fromJson(json['precision'])
            : null,
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
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (precision != null) {
      json['precision'] = precision!.toJson();
    }
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
  String get type => 'Includes';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('After expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return IncludedIn.includedIn(right, left, precision);
  }
}

import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified
/// precision to determine if the first argument is the same or after the
/// second argument.
/// If no precision is specified, the comparison is performed beginning with
/// years (or hours for time values) and proceeding to the finest precision
/// specified in either input.
/// For Date values, precision must be one of year, month, or day.
/// For DateTime values, precision must be one of year, month, day, hour,
/// minute, second, or millisecond.
/// For Time values, precision must be one of hour, minute, second, or
/// millisecond.
/// Signature:
///
/// same _precision_ or after(left Date, right Date) Boolean
/// same _precision_ or after(left DateTime, right DateTime) Boolean
/// same _precision_ or after(left Time, right Time) Boolean
/// Description:
///
/// The same-precision-or after operator compares two Date, DateTime, or Time
/// values to the specified precision to determine whether the first argument
/// is the same or after the second argument. The comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the first value is greater than the second, the result is
/// true; if the first value is less than the second, the result is false; if
/// either input has no value for the precision, the comparison stops and the
/// result is null; if the specified precision has been reached, the comparison
/// stops and the result is true.
///
/// If no precision is specified, the comparison is performed beginning with
/// years (or hours for time values) and proceeding to the finest precision
/// specified in either input.
///
/// For Date values, precision must be one of: year, month, or day.
///
/// For DateTime values, precision must be one of: year, month, day, hour,
/// minute, second, or millisecond.
///
/// For Time values, precision must be one of: hour, minute, second, or
/// millisecond.
///
/// Note specifically that due to variability in the way week numbers are
/// determined, comparisons involving weeks are not supported.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime as defined by the ToDateTime
/// operator.
///
/// When comparing DateTime values with different timezone offsets,
/// implementations should normalize to the timezone offset of the evaluation
/// request timestamp, but only when the comparison precision is hours, minutes,
/// seconds, or milliseconds.
///
/// If either or both arguments are null, the result is null.
///
/// Note that in timing phrases, the keyword on may be used as a synonym for
/// same for this operator.
///
/// The following examples illustrate the behavior of the same-precision-or
/// after operator:
///
/// define "SameOrAfterTrue": @2012-01-02 same day or after @2012-01-01
/// define "SameOrAfterFalse": @2012-01-01 same day or after @2012-01-02
/// define "UncertainSameOrAfterIsNull": @2012-01-02 same day or after @2012-01
/// define "SameOrAfterIsNull": @2012-01-01 same day or after null
/// This operator is also defined for intervals, see the Same Or After
/// (Intervals) operator for more information.
class OnOrAfter extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  OnOrAfter({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OnOrAfter.fromJson(Map<String, dynamic> json) => OnOrAfter(
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
    final data = <String, dynamic>{};
    if (precision != null) {
      data['precision'] = precision!.toJson();
    }
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
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
  String toString() => toJson().toString();

  @override
  String get type => 'OnOrAfter';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('OnOrAfter expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    // OnOrAfter is semantically equivalent to SameOrAfter
    return SameOrAfter.sameOrAfter(left, right, precision);
  }
}

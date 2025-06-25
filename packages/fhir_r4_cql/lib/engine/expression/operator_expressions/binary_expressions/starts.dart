import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to determine if the first interval starts the second interval.
/// Returns true if Start(i1) = Start(i2) and End(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
///starts _precision_ (left Interval<T>, right Interval<T>) Boolean
///Description:
///
///The starts operator returns true if the first interval starts the second.
///More precisely, if the starting point of the first is equal to the starting
///point of the second interval and the ending point of the first interval is
///less than or equal to the ending point of the second interval.
///
///This operator uses the semantics described in the Start and End operators to
///determine interval boundaries.
///
///If precision is specified and the point type is a Date, DateTime, or Time
///type, comparisons used in the operation are performed at the specified
///precision.
///
///If either argument is null, the result is null.
///
///The following examples illustrate the behavior of the starts operator:
///
///define "StartsIsTrue": Interval[0, 5] starts Interval[0, 7]
///define "StartsIsFalse": Interval[0, 7] starts Interval[0, 6]
///define "StartsIsNull": Interval[1, 5] starts null
class Starts extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Starts({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Starts.fromJson(Map<String, dynamic> json) => Starts(
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
    data['type'] = type;
    if (precision != null) {
      data['precision'] = precision?.toJson();
    }
    if (operand.isNotEmpty) {
      data['operand'] = operand.map((e) => e.toJson()).toList();
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
  String get type => 'Starts';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Starts expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    if (left is CqlInterval && right is CqlInterval) {
      return starts(left, right, precision);
    } else {
      return null;
    }
  }

  static FhirBoolean? starts(
    CqlInterval left,
    CqlInterval right, [
    CqlDateTimePrecision? precision,
  ]) {
    final leftStart = left.getStart();
    final leftEnd = left.getEnd();
    final rightStart = right.getStart();
    final rightEnd = right.getEnd();
    final equal = Equal.equal(leftStart, rightStart);
    if (equal == null) {
      return null;
    } else if (equal.valueBoolean == false) {
      return FhirBoolean(false);
    }
    final result = SameOrBefore.sameOrBefore(leftEnd, rightEnd, precision);
    if (result != null) {
      return result;
    }
    if (leftEnd == null || rightEnd == null) {
      return null;
    }
    if (leftEnd is Comparable && rightEnd is Comparable) {
      return FhirBoolean(leftEnd.compareTo(rightEnd) <= 0);
    }
    return null;
  }
}

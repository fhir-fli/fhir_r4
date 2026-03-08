import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to determine if the first interval ends immediately before the
/// second interval starts.
/// Returns true if End(i1) = Predecessor(Start(i2)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
/// meets _precision_ (left `Interval<T>`, right `Interval<T>`) Boolean
/// meets before _precision_ (left `Interval<T>`, right `Interval<T>`) Boolean
/// meets after _precision_ (left `Interval<T>`, right `Interval<T>`) Boolean
/// Description:
///
/// The meets operator returns true if the first interval ends immediately
/// before the second interval starts, or if the first interval starts
/// immediately after the second interval ends. In other words, if the ending
/// point of the first interval is equal to the predecessor of the starting
/// point of the second, or if the starting point of the first interval is
/// equal to the successor of the ending point of the second.
///
/// The meets before operator returns true if the first interval ends
/// immediately before the second interval starts, while the meets after
/// operator returns true if the first interval starts immediately after the
/// second interval ends.
///
/// This operator uses the semantics described in the Start and End operators
/// to determine interval boundaries.
///
/// If precision is specified and the point type is a Date, DateTime, or
/// Time type, comparisons used in the operation are performed at the specified
/// precision.
///
/// If either argument is null, the result is null.
///
/// Note that Date-, DateTime-, or Time-based intervals with partially specified
/// boundaries will "meet" at the precision of the boundaries, not the finest
/// precision for the point type. For example:
///
/// define "MeetsAtHours": Interval[@T03, @T04] meets Interval[@T05, @T06]
/// The MeetsAtHours expression returns true because the meets operation is
/// performed at the hour precision.
///
/// The following examples illustrate the behavior of the meets, meets before,
/// and meets after operators:
///
/// define "MeetsIsTrue": Interval[6, 10] meets Interval[0, 5]
/// define "MeetsBeforeIsTrue": Interval[-5, -1] meets before Interval[0, 5]
/// define "MeetsAfterIsFalse": Interval[6, 10] meets after Interval[0, 7]
/// define "MeetsIsNull": Interval[6, 10] meets (null as `Interval<Integer>`)
class MeetsBefore extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  MeetsBefore({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory MeetsBefore.fromJson(Map<String, dynamic> json) => MeetsBefore(
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
  String get type => 'MeetsBefore';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('MeetsBefore expression must have 2 operands');
    }

    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    return meetsBefore(left, right, precision);
  }

  static FhirBoolean? meetsBefore(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null || right == null) {
      return null;
    } else if (left is CqlInterval && right is CqlInterval) {
      // getStart()/getEnd() return null for unknown boundaries (open null),
      // but return MinValue/MaxValue for closed null (infinity endpoints).
      final eLS = left.getStart();
      final eLE = left.getEnd();
      final eRS = right.getStart();
      final eRE = right.getEnd();

      // If intervals provably overlap, they cannot meet
      if (Meets.intervalsOverlap(eLS, eLE, eRS, eRE, precision)) {
        return FhirBoolean(false);
      }

      // Check meets before: leftEnd = predecessor(rightStart)
      final result = Meets.checkMeetsBefore(eLE, eRS, precision);
      if (result != null) return result;

      // If leftStart ≥ rightStart, then leftEnd ≥ leftStart ≥ rightStart > pred(rightStart)
      // so leftEnd ≠ pred(rightStart) → false
      if (eLS != null && eRS != null) {
        final ge = precision != null
            ? SameOrAfter.sameOrAfter(eLS, eRS, precision)
            : GreaterOrEqual.greaterOrEqual(eLS, eRS);
        if (ge?.valueBoolean == true) return FhirBoolean(false);
      }
      // If rightEnd < leftStart, right is entirely before left → can't meet before
      if (eRE != null && eLS != null) {
        final gt = precision != null
            ? After.after(eLS, eRE, precision)
            : Greater.greater(eLS, eRE);
        if (gt?.valueBoolean == true) return FhirBoolean(false);
      }
      return null;
    } else {
      return null;
    }
  }
}

import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to determine if the first interval starts immediately after the
/// second interval ends.
/// Returns true if End(i2) = Predecessor(Start(i1)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
/// meets _precision_ (left Interval<T>, right Interval<T>) Boolean
/// meets before _precision_ (left Interval<T>, right Interval<T>) Boolean
/// meets after _precision_ (left Interval<T>, right Interval<T>) Boolean
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
/// define "MeetsIsNull": Interval[6, 10] meets (null as Interval<Integer>)
class MeetsAfter extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  MeetsAfter({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory MeetsAfter.fromJson(Map<String, dynamic> json) => MeetsAfter(
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
  String get type => 'MeetsAfter';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  // TODO(Dokotela): with precision
  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('MeetsAfter expression must have 2 operands');
    }

    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    if (left == null || right == null) {
      return null;
    } else if (left is CqlInterval && right is CqlInterval) {
      final leftStart = left.getStart();
      final rightEnd = right.getEnd();
      return Equal.equal(leftStart, Successor.successor(rightEnd));
    } else {
      return null;
    }
  }
}

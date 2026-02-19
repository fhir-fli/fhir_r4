import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to check if the first operand properly contains the second operand.
/// Returns true if the given point is greater than the starting point of the interval and less than the ending point of the interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperContains extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  ProperContains({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ProperContains.fromJson(Map<String, dynamic> json) => ProperContains(
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
  String toString() => toJson().toString();

  @override
  String get type => 'ProperContains';

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('ProperContains expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return properContains(left, right);
  }

  static FhirBoolean? properContains(dynamic left, dynamic right) {
    if (left == null || right == null) return null;
    if (left is CqlInterval) {
      final contains = left.contains(right);
      if (!contains) return FhirBoolean(false);
      // Check it's not equal to both start and end (unit interval)
      final start = left.getStart();
      final end = left.getEnd();
      final eqStart = Equivalent.equivalent(right, start);
      final eqEnd = Equivalent.equivalent(right, end);
      if (eqStart.valueBoolean == true && eqEnd.valueBoolean == true) {
        return FhirBoolean(false);
      }
      // Point must be strictly inside (not at boundaries)
      if (eqStart.valueBoolean == true || eqEnd.valueBoolean == true) {
        return FhirBoolean(false);
      }
      return FhirBoolean(true);
    } else if (left is List) {
      return Contains.contains(left, right);
    }
    return null;
  }
}

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to check if the first operand includes the second and is strictly larger.
/// Returns true if the first interval includes every element of the second interval,
/// using equality semantics, and the first interval is strictly larger.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIncludes extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  ProperIncludes({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ProperIncludes.fromJson(Map<String, dynamic> json) => ProperIncludes(
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
      data['precision'] = precision!.toJson();
    }
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
  String get type => 'ProperIncludes';

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('ProperIncludes expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return properIncludes(left, right, precision);
  }

  static FhirBoolean? properIncludes(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null || right == null) return null;
    // First check includes (right is included in left)
    final included = IncludedIn.includedIn(right, left, precision);
    if (included == null) return null;
    if (included.valueBoolean != true) return FhirBoolean(false);
    // Then check not equal (proper means strictly larger)
    final eq = Equivalent.equivalent(left, right);
    if (eq.valueBoolean == true) return FhirBoolean(false);
    return FhirBoolean(true);
  }
}

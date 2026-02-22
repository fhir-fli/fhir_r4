import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to construct a date value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, month may be null, but if it is, day must be null as well.
class DateExpression extends OperatorExpression {
  final CqlExpression? day;
  final CqlExpression? month;
  final CqlExpression year;

  DateExpression({
    required this.year,
    this.month,
    this.day,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DateExpression.fromOperandList(
      {required List<CqlExpression> operand}) {
    if (operand.isEmpty) {
      throw ArgumentError('DateExpression must have at least one operand');
    }
    return DateExpression(
      year: operand[0],
      month: operand.length > 1 ? operand[1] : null,
      day: operand.length > 2 ? operand[2] : null,
    );
  }

  factory DateExpression.fromJson(Map<String, dynamic> json) => DateExpression(
        year: CqlExpression.fromJson(json['year']),
        month: json['month'] == null
            ? null
            : CqlExpression.fromJson(json['month']),
        day: json['day'] == null ? null : CqlExpression.fromJson(json['day']),
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
      'year': year.toJson(),
    };

    if (month != null) {
      data['month'] = month!.toJson();
    }

    if (day != null) {
      data['day'] = day!.toJson();
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
  String get type => 'Date';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Date'];

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final yearVal = await year.execute(context);
    if (yearVal == null) return null;

    int? y;
    if (yearVal is fhir.FhirInteger) {
      y = yearVal.valueInt;
    } else if (yearVal is int) {
      y = yearVal;
    }
    if (y == null) return null;

    int? m;
    if (month != null) {
      final monthVal = await month!.execute(context);
      if (monthVal is fhir.FhirInteger) {
        m = monthVal.valueInt;
      } else if (monthVal is int) {
        m = monthVal;
      }
    }

    int? d;
    if (day != null) {
      final dayVal = await day!.execute(context);
      if (dayVal is fhir.FhirInteger) {
        d = dayVal.valueInt;
      } else if (dayVal is int) {
        d = dayVal;
      }
    }

    final yStr = y.toString().padLeft(4, '0');
    if (m == null) return fhir.FhirDate.fromString(yStr);
    final mStr = m.toString().padLeft(2, '0');
    if (d == null) return fhir.FhirDate.fromString('$yStr-$mStr');
    final dStr = d.toString().padLeft(2, '0');
    return fhir.FhirDate.fromString('$yStr-$mStr-$dStr');
  }
}

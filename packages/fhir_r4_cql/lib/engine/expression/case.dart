import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents a case operator allowing multiple conditional expressions to be
/// chained together.
class Case extends CqlExpression {
  /// List of case items specifying conditions and actions.
  final List<CaseItem> caseItem;

  /// CqlExpression to compare against.
  CqlExpression? comparand;

  /// Action to perform if none of the conditions are met.
  final CqlExpression elseExpr;

  Case({
    this.comparand,
    required this.caseItem,
    required this.elseExpr,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Case.fromJson(Map<String, dynamic> json) => Case(
        comparand: json['comparand'] == null
            ? null
            : CqlExpression.fromJson(json['comparand']),
        caseItem: (json['caseItem']! as List)
            .map((e) => CaseItem.fromJson(e))
            .toList(),
        elseExpr: CqlExpression.fromJson(json['else']!),
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
    };

    if (comparand != null) {
      data['comparand'] = comparand!.toJson();
    }

    data['caseItem'] = caseItem.map((e) => e.toJson()).toList();

    data['else'] = elseExpr.toJson();

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
  String get type => 'Case';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    List<String> types = [];
    for (final item in caseItem) {
      final newTypes = item.then.getReturnTypes(library);
      types.addAll(newTypes);
    }
    final elseTypes = elseExpr.getReturnTypes(library);

    types.addAll(elseTypes);

    if (types.isEmpty) {
      return types;
    } else {
      if (types.contains('Quantity') || types.contains('Decimal')) {
        return ['Decimal'];
      } else if (types.contains('Integer64')) {
        return ['Integer64'];
      } else if (types.contains('Integer')) {
        return ['Integer'];
      } else {
        return types.toSet().toList();
      }
    }
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (comparand == null) {
      int index = -1;
      for (int i = 0; i < caseItem.length; i++) {
        final result = await caseItem[i].when_.execute(context);
        if (result is FhirBoolean && (result.valueBoolean ?? false)) {
          index = i;
          break;
        }
      }
      if (index != -1) {
        return caseItem[index].then.execute(context);
      } else {
        return elseExpr.execute(context);
      }
    } else {
      final comparandResult = await comparand!.execute(context);
      int index = -1;
      for (int i = 0; i < caseItem.length; i++) {
        final whenResult = await caseItem[i].when_.execute(context);
        if (Equal.equal(comparandResult, whenResult)?.valueBoolean ?? false) {
          index = i;
          break;
        }
      }

      if (index != -1) {
        return caseItem[index].then.execute(context);
      } else {
        return elseExpr.execute(context);
      }
    }
  }
}

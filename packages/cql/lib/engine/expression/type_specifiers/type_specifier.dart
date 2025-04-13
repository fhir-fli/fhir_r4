import '../../../cql.dart';

/// Abstract type for TypeSpecifier.
abstract class TypeSpecifierExpression extends CqlExpression {
  TypeSpecifierExpression({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TypeSpecifierExpression.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'BoundParameterTypeSpecifier':
        return BoundParameterTypeSpecifier.fromJson(json);
      case 'ChoiceTypeSpecifier':
        return ChoiceTypeSpecifier.fromJson(json);
      case 'IntervalTypeSpecifier':
        return IntervalTypeSpecifier.fromJson(json);
      case 'ListTypeSpecifier':
        return ListTypeSpecifier.fromJson(json);
      case 'NamedTypeSpecifier':
        return NamedTypeSpecifier.fromJson(json);
      case 'ParameterTypeSpecifier':
        return ParameterTypeSpecifier.fromJson(json);
      case 'TupleTypeSpecifier':
        return TupleTypeSpecifier.fromJson(json);
      default:
        throw ArgumentError.value(
            json['type'], 'json', 'Invalid  TypeSpecifierExpression type');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
    };

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
  String get type;
}

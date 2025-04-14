import '../../../cql.dart';

/// Abstract base class for expressions that take three arguments.
abstract class TernaryExpression extends OperatorExpression {
  /// List of expressions as operand.
  final List<CqlExpression> operand;

  TernaryExpression({
    required this.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TernaryExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'ReplaceMatches':
        return ReplaceMatches.fromJson(json);
      default:
        throw ArgumentError('Invalid type: $type');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.map((e) => e.toJson()).toList(),
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
}

import '../../../../cql.dart';

/// Abstract base class for expressions that take two arguments.
abstract class BinaryExpression extends OperatorExpression {
  /// Because XML doesn't always directly translate lists to maps
  final bool isList;

  /// List of expressions as operand.
  List<CqlExpression> operand;

  BinaryExpression({
    required this.operand,
    this.isList = true,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory BinaryExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'Add':
        return Add.fromJson(json);
      case 'After':
        return After.fromJson(json);
      case 'And':
        return And.fromJson(json);
      case 'Before':
        return Before.fromJson(json);
      case 'CanConvertQuantity':
        return CanConvertQuantity.fromJson(json);
      case 'Collapse':
        return Collapse.fromJson(json);
      case 'Contains':
        return Contains.fromJson(json);
      case 'ConvertQuantity':
        return ConvertQuantity.fromJson(json);
      case 'DifferenceBetween':
        return DifferenceBetween.fromJson(json);
      case 'Divide':
        return Divide.fromJson(json);
      case 'DurationBetween':
        return DurationBetween.fromJson(json);
      case 'EndsWith':
        return EndsWith.fromJson(json);
      case 'Ends':
        return Ends.fromJson(json);
      case 'Equal':
        return Equal.fromJson(json);
      case 'Equivalent':
        return Equivalent.fromJson(json);
      case 'GreaterOrEqual':
        return GreaterOrEqual.fromJson(json);
      case 'Greater':
        return Greater.fromJson(json);
      case 'HighBoundary':
        return HighBoundary.fromJson(json);
      case 'Implies':
        return Implies.fromJson(json);
      case 'In':
        return In.fromJson(json);
      case 'IncludedIn':
        return IncludedIn.fromJson(json);
      case 'Includes':
        return Includes.fromJson(json);
      case 'Indexer':
        return Indexer.fromJson(json);
      case 'LessOrEqual':
        return LessOrEqual.fromJson(json);
      case 'Less':
        return Less.fromJson(json);
      case 'Log':
        return Log.fromJson(json);
      case 'LowBoundary':
        return LowBoundary.fromJson(json);
      case 'Matches':
        return Matches.fromJson(json);
      case 'MeetsAfter':
        return MeetsAfter.fromJson(json);
      case 'MeetsBefore':
        return MeetsBefore.fromJson(json);
      case 'Meets':
        return Meets.fromJson(json);
      case 'Modulo':
        return Modulo.fromJson(json);
      case 'Multiply':
        return Multiply.fromJson(json);
      case 'NotEqual':
        return NotEqual.fromJson(json);
      case 'OnOrAfter':
        return OnOrAfter.fromJson(json);
      case 'OnOrBefore':
        return OnOrBefore.fromJson(json);
      case 'Or':
        return Or.fromJson(json);
      case 'OverlapsAfter':
        return OverlapsAfter.fromJson(json);
      case 'OverlapsBefore':
        return OverlapsBefore.fromJson(json);
      case 'Overlaps':
        return Overlaps.fromJson(json);
      case 'Power':
        return Power.fromJson(json);
      case 'ProperContains':
        return ProperContains.fromJson(json);
      case 'ProperIn':
        return ProperIn.fromJson(json);
      case 'ProperIncludedIn':
        return ProperIncludedIn.fromJson(json);
      case 'ProperIncludes':
        return ProperIncludes.fromJson(json);
      // case 'Skip':
      //   return Skip.fromJson(json);
      case 'SameAs':
        return SameAs.fromJson(json);
      case 'SameOrAfter':
        return SameOrAfter.fromJson(json);
      case 'SameOrBefore':
        return SameOrBefore.fromJson(json);
      case 'StartsWith':
        return StartsWith.fromJson(json);
      case 'Starts':
        return Starts.fromJson(json);
      case 'Subtract':
        return Subtract.fromJson(json);
      // case 'Take':
      //   return Take.fromJson(json);
      case 'Times':
        return Times.fromJson(json);
      case 'TruncatedDivide':
        return TruncatedDivide.fromJson(json);
      case 'Xor':
        return Xor.fromJson(json);
      default:
        throw ArgumentError('Unknown BinaryExpression type: $type');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'isList': isList,
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
}

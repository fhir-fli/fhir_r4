import '../../../cql.dart';

/// Abstract base class for all built-in operators used in the ELM expression
/// language.
abstract class OperatorExpression extends CqlExpression {
  /// Declared signature of the operator or function being called.
  List<TypeSpecifierExpression>? signature;

  OperatorExpression({
    this.signature,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OperatorExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      /// Binary Expressions
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
      case 'SameAs':
        return SameAs.fromJson(json);
      case 'SameOrAfter':
        return SameOrAfter.fromJson(json);
      case 'SameOrBefore':
        return SameOrBefore.fromJson(json);
      // case 'Skip':
      //   return Skip.fromJson(json);
      case 'StartsWith':
        return StartsWith.fromJson(json);
      case 'Starts':
        return Starts.fromJson(json);
      case 'Subtract':
        return Subtract.fromJson(json);
      case 'Times':
        return Times.fromJson(json);
      case 'TruncatedDivide':
        return TruncatedDivide.fromJson(json);
      case 'Xor':
        return Xor.fromJson(json);

      /// Nary Expressions
      case 'Contactenate':
        return Concatenate.fromJson(json);
      case 'Union':
        return Union.fromJson(json);
      case 'Intersect':
        return Intersect.fromJson(json);
      case 'Except':
        return Except.fromJson(json);
      case 'Coalesce':
        return Coalesce.fromJson(json);

      /// Unary Expressions
      case 'Abs':
        return Abs.fromJson(json);
      case 'As':
        return As.fromJson(json);
      case 'CanConvert':
        return CanConvert.fromJson(json);
      case 'Ceiling':
        return Ceiling.fromJson(json);
      case 'Convert':
        return Convert.fromJson(json);
      case 'ConvertsToBoolean':
        return ConvertsToBoolean.fromJson(json);
      case 'ConvertsToDateTime':
        return ConvertsToDateTime.fromJson(json);
      case 'ConvertsToDate':
        return ConvertsToDate.fromJson(json);
      case 'ConvertsToDecimal':
        return ConvertsToDecimal.fromJson(json);
      case 'ConvertsToInteger':
        return ConvertsToInteger.fromJson(json);
      case 'ConvertsToQuantity':
        return ConvertsToQuantity.fromJson(json);
      case 'ConvertsToRatio':
        return ConvertsToRatio.fromJson(json);
      case 'ConvertsToString':
        return ConvertsToString.fromJson(json);
      case 'ConvertsToTime':
        return ConvertsToTime.fromJson(json);
      case 'DateFrom':
        return DateFrom.fromJson(json);
      case 'DateTimeComponentFrom':
        return DateTimeComponentFrom.fromJson(json);
      case 'Distinct':
        return Distinct.fromJson(json);
      case 'End':
        return End.fromJson(json);
      case 'Exists':
        return Exists.fromJson(json);
      case 'Exp':
        return Exp.fromJson(json);
      case 'Flatten':
        return Flatten.fromJson(json);
      case 'Floor':
        return Floor.fromJson(json);
      case 'IsFalse':
        return IsFalse.fromJson(json);
      case 'IsNull':
        return IsNull.fromJson(json);
      case 'IsTrue':
        return IsTrue.fromJson(json);
      case 'Is':
        return Is.fromJson(json);
      case 'Length':
        return Length.fromJson(json);
      case 'Ln':
        return Ln.fromJson(json);
      case 'Lower':
        return Lower.fromJson(json);
      case 'Negate':
        return Negate.fromJson(json);
      case 'Not':
        return Not.fromJson(json);
      case 'PointFrom':
        return PointFrom.fromJson(json);
      case 'Precision':
        return Precision.fromJson(json);
      case 'Predecessor':
        return Predecessor.fromJson(json);
      case 'SingletonFrom':
        return SingletonFrom.fromJson(json);
      case 'Size':
        return Size.fromJson(json);
      case 'Start':
        return Start.fromJson(json);
      case 'Successor':
        return Successor.fromJson(json);
      case 'Tail':
        return Tail.fromJson(json);
      case 'TimeFrom':
        return TimeFrom.fromJson(json);
      case 'TimezoneOffsetFrom':
        return TimezoneOffsetFrom.fromJson(json);
      case 'ToBoolean':
        return ToBoolean.fromJson(json);
      case 'ToConcept':
        return ToConcept.fromJson(json);
      case 'ToDateTime':
        return ToDateTime.fromJson(json);
      case 'ToDate':
        return ToDate.fromJson(json);
      case 'ToDecimal':
        return ToDecimal.fromJson(json);
      case 'ToInteger':
        return ToInteger.fromJson(json);
      case 'ToList':
        return ToList.fromJson(json);
      case 'ToQuantity':
        return ToQuantity.fromJson(json);
      case 'ToRatio':
        return ToRatio.fromJson(json);
      case 'ToString':
        return ToString.fromJson(json);
      case 'ToTime':
        return ToTime.fromJson(json);
      case 'Truncate':
        return Truncate.fromJson(json);
      case 'Upper':
        return Upper.fromJson(json);
      case 'Width':
        return Width.fromJson(json);

      // Operator Expressions
      case 'Children':
        return Children.fromJson(json);
      case 'Combine':
        return Combine.fromJson(json);
      case 'Descendents':
        return Descendents.fromJson(json);
      case 'DateTime':
        return DateTimeExpression.fromJson(json);
      case 'Date':
        return DateExpression.fromJson(json);
      case 'First':
        return First.fromJson(json);
      case 'IndexOf':
        return IndexOf.fromJson(json);
      case 'LastPositionOf':
        return LastPositionOf.fromJson(json);
      case 'Last':
        return Last.fromJson(json);
      case 'Message':
        return Message.fromJson(json);
      case 'Now':
        return Now.fromJson(json);
      case 'PositionOf':
        return PositionOf.fromJson(json);
      case 'ReplaceMatches':
        return ReplaceMatches.fromJson(json);
      case 'Round':
        return Round.fromJson(json);
      case 'Slice':
        return Slice.fromJson(json);
      case 'SplitOnMatches':
        return SplitOnMatches.fromJson(json);
      case 'Split':
        return Split.fromJson(json);
      case 'Substring':
        return Substring.fromJson(json);
      // case 'Take':
      //   return Take.fromJson(json);
      case 'TimeExpression':
        return TimeExpression.fromJson(json);
      case 'TimeOfDay':
        return TimeOfDay.fromJson(json);
      case 'Today':
        return Today.fromJson(json);
      default:
        throw StateError('Invalid type for OperatorExpression');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
    };

    if (signature != null) {
      data['signature'] = signature!.map((e) => e.toJson()).toList();
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
}

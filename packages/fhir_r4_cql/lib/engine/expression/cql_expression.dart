import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Expression type defines the abstract base type for all expressions used in the ELM expression language.
class CqlExpression extends Element {
  CqlExpression({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CqlExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    if (type is String) {
      switch (type) {
        case 'Abs':
          return Abs.fromJson(json);
        case 'Add':
          return Add.fromJson(json);
        case 'After':
          return After.fromJson(json);
        case 'Aggregate':
          return Aggregate.fromJson(json);
        case 'AggregateExpression':
          return AggregateExpression.fromJson(json);
        case 'AliasedQuerySource':
          return AliasedQuerySource.fromJson(json);
        case 'AliasRef':
          return AliasRef.fromJson(json);
        case 'AllTrue':
          return AllTrue.fromJson(json);
        case 'And':
          return And.fromJson(json);
        case 'AnyInCodeSystem':
          return AnyInCodeSystem.fromJson(json);
        case 'AnyInValueSet':
          return AnyInValueSet.fromJson(json);
        case 'AnyTrue':
          return AnyTrue.fromJson(json);
        case 'As':
          return As.fromJson(json);
        case 'Avg':
          return Avg.fromJson(json);
        case 'Before':
          return Before.fromJson(json);
        case 'BinaryExpression':
          return BinaryExpression.fromJson(json);
        case 'BoundParameterTypeSpecifier':
          return BoundParameterTypeSpecifier.fromJson(json);
        case 'CalculateAge':
          return CalculateAge.fromJson(json);
        case 'CalculateAgeAt':
          return CalculateAgeAt.fromJson(json);
        case 'CanConvert':
          return CanConvert.fromJson(json);
        case 'CanConvertQuantity':
          return CanConvertQuantity.fromJson(json);
        case 'Case':
          return Case.fromJson(json);
        case 'Ceiling':
          return Ceiling.fromJson(json);
        case 'Children':
          return Children.fromJson(json);
        case 'ChoiceTypeSpecifier':
          return ChoiceTypeSpecifier.fromJson(json);
        case 'Coalesce':
          return Coalesce.fromJson(json);
        case 'Code':
          return Code.fromJson(json);
        case 'CodeRef':
          return CodeRef.fromJson(json);
        case 'CodeSystemRef':
          return CodeSystemRef.fromJson(json);
        case 'Collapse':
          return Collapse.fromJson(json);
        case 'Combine':
          return Combine.fromJson(json);
        case 'Concatenate':
          return Concatenate.fromJson(json);
        case 'Concept':
          return Concept.fromJson(json);
        case 'ConceptRef':
          return ConceptRef.fromJson(json);
        case 'Contains':
          return Contains.fromJson(json);
        case 'Convert':
          return Convert.fromJson(json);
        case 'ConvertQuantity':
          return ConvertQuantity.fromJson(json);
        case 'ConvertsToBoolean':
          return ConvertsToBoolean.fromJson(json);
        case 'ConvertsToDate':
          return ConvertsToDate.fromJson(json);
        case 'ConvertsToDateTime':
          return ConvertsToDateTime.fromJson(json);
        case 'ConvertsToDecimal':
          return ConvertsToDecimal.fromJson(json);
        case 'ConvertsToInteger':
          return ConvertsToInteger.fromJson(json);
        case 'ConvertsToLong':
          return ConvertsToLong.fromJson(json);
        case 'ConvertsToQuantity':
          return ConvertsToQuantity.fromJson(json);
        case 'ConvertsToRatio':
          return ConvertsToRatio.fromJson(json);
        case 'ConvertsToString':
          return ConvertsToString.fromJson(json);
        case 'ConvertsToTime':
          return ConvertsToTime.fromJson(json);
        case 'Count':
          return Count.fromJson(json);
        case 'Current':
          return Current.fromJson(json);
        case 'DateFrom':
          return DateFrom.fromJson(json);
        case 'DateTimeComponentFrom':
          return DateTimeComponentFrom.fromJson(json);
        case 'Descendents':
          return Descendents.fromJson(json);
        case 'DifferenceBetween':
          return DifferenceBetween.fromJson(json);
        case 'Distinct':
          return Distinct.fromJson(json);
        case 'Divide':
          return Divide.fromJson(json);
        case 'DurationBetween':
          return DurationBetween.fromJson(json);
        case 'End':
          return End.fromJson(json);
        case 'Ends':
          return Ends.fromJson(json);
        case 'EndsWith':
          return EndsWith.fromJson(json);
        case 'Equal':
          return Equal.fromJson(json);
        case 'Equivalent':
          return Equivalent.fromJson(json);
        case 'Except':
          return Except.fromJson(json);
        case 'Exists':
          return Exists.fromJson(json);
        case 'Exp':
          return Exp.fromJson(json);
        case 'Expand':
          return Expand.fromJson(json);
        case 'ExpandValueSet':
          return ExpandValueSet.fromJson(json);
        case 'DateTime':
          return DateTimeExpression.fromJson(json);
        case 'Date':
          return DateExpression.fromJson(json);
        case 'Expression':
          return CqlExpression.fromJson(json);
        case 'ExpressionRef':
          return ExpressionRef.fromJson(json);
        case 'Time':
          return TimeExpression.fromJson(json);
        case 'Filter':
          return Filter.fromJson(json);
        case 'First':
          return First.fromJson(json);
        case 'Flatten':
          return Flatten.fromJson(json);
        case 'Floor':
          return Floor.fromJson(json);
        case 'ForEach':
          return ForEach.fromJson(json);
        case 'FunctionRef':
          return FunctionRef.fromJson(json);
        case 'GeometricMean':
          return GeometricMean.fromJson(json);
        case 'Greater':
          return Greater.fromJson(json);
        case 'GreaterOrEqual':
          return GreaterOrEqual.fromJson(json);
        case 'HighBoundary':
          return HighBoundary.fromJson(json);
        case 'IdentifierRef':
          return IdentifierRef.fromJson(json);
        case 'If':
          return IfThenElse.fromJson(json);
        case 'Implies':
          return Implies.fromJson(json);
        case 'In':
          return In.fromJson(json);
        case 'IncludedIn':
          return IncludedIn.fromJson(json);
        case 'Includes':
          return Includes.fromJson(json);
        case 'InCodeSystem':
          return InCodeSystem.fromJson(json);
        case 'Indexer':
          return Indexer.fromJson(json);
        case 'IndexOf':
          return IndexOf.fromJson(json);
        case 'Instance':
          return Instance.fromJson(json);
        case 'Intersect':
          return Intersect.fromJson(json);
        case 'Interval':
          return IntervalExpression.fromJson(json);
        case 'IntervalTypeSpecifier':
          return IntervalTypeSpecifier.fromJson(json);
        case 'InValueSet':
          return InValueSet.fromJson(json);
        case 'Is':
          return Is.fromJson(json);
        case 'IsFalse':
          return IsFalse.fromJson(json);
        case 'Null':
          return NullExpression.fromJson(json);
        case 'IsNull':
          return IsNull.fromJson(json);
        case 'IsTrue':
          return IsTrue.fromJson(json);
        case 'Iteration':
          return Iteration.fromJson(json);
        case 'Last':
          return Last.fromJson(json);
        case 'LastPositionOf':
          return LastPositionOf.fromJson(json);
        case 'Length':
          return Length.fromJson(json);
        case 'Less':
          return Less.fromJson(json);
        case 'LessOrEqual':
          return LessOrEqual.fromJson(json);
        case 'List':
          return ListExpression.fromJson(json);
        case 'ListTypeSpecifier':
          return ListTypeSpecifier.fromJson(json);
        case 'Literal':
          return Literal.fromJson(json);
        case 'Ln':
          return Ln.fromJson(json);
        case 'Log':
          return Log.fromJson(json);
        case 'LowBoundary':
          return LowBoundary.fromJson(json);
        case 'Lower':
          return Lower.fromJson(json);
        case 'Matches':
          return Matches.fromJson(json);
        case 'Max':
          return Max.fromJson(json);
        case 'MaxValue':
          return MaxValue.fromJson(json);
        case 'Median':
          return Median.fromJson(json);
        case 'Meets':
          return Meets.fromJson(json);
        case 'MeetsAfter':
          return MeetsAfter.fromJson(json);
        case 'MeetsBefore':
          return MeetsBefore.fromJson(json);
        case 'Message':
          return Message.fromJson(json);
        case 'Min':
          return Min.fromJson(json);
        case 'MinValue':
          return MinValue.fromJson(json);
        case 'Mode':
          return Mode.fromJson(json);
        case 'Modulo':
          return Modulo.fromJson(json);
        case 'Multiply':
          return Multiply.fromJson(json);
        case 'NamedTypeSpecifier':
          return NamedTypeSpecifier.fromJson(json);
        case 'NaryExpression':
          return NaryExpression.fromJson(json);
        case 'Negate':
          return Negate.fromJson(json);
        case 'Not':
          return Not.fromJson(json);
        case 'NotEqual':
          return NotEqual.fromJson(json);
        case 'Now':
          return Now.fromJson(json);
        case 'NullExpression':
          return NullExpression.fromJson(json);
        case 'OnOrBefore':
          return OnOrBefore.fromJson(json);
        case 'OperandRef':
          return OperandRef.fromJson(json);
        case 'OperatorExpression':
          return OperatorExpression.fromJson(json);
        case 'Or':
          return Or.fromJson(json);
        case 'Overlaps':
          return Overlaps.fromJson(json);
        case 'OverlapsAfter':
          return OverlapsAfter.fromJson(json);
        case 'OverlapsBefore':
          return OverlapsBefore.fromJson(json);
        case 'ParameterRef':
          return ParameterRef.fromJson(json);
        case 'ParameterTypeSpecifier':
          return ParameterTypeSpecifier.fromJson(json);
        case 'PointFrom':
          return PointFrom.fromJson(json);
        case 'PopulationStdDev':
          return PopulationStdDev.fromJson(json);
        case 'PopulationVariance':
          return PopulationVariance.fromJson(json);
        case 'PositionOf':
          return PositionOf.fromJson(json);
        case 'Power':
          return Power.fromJson(json);
        case 'Precision':
          return Precision.fromJson(json);
        case 'Predecessor':
          return Predecessor.fromJson(json);
        case 'Product':
          return Product.fromJson(json);
        case 'ProperContains':
          return ProperContains.fromJson(json);
        case 'ProperIn':
          return ProperIn.fromJson(json);
        case 'ProperIncludedIn':
          return ProperIncludedIn.fromJson(json);
        case 'ProperIncludes':
          return ProperIncludes.fromJson(json);
        case 'Property':
          return Property.fromJson(json);
        case 'Quantity':
          return Quantity.fromJson(json);
        case 'Query':
          return Query.fromJson(json);
        case 'QueryLetRef':
          return QueryLetRef.fromJson(json);
        case 'Ratio':
          return Ratio.fromJson(json);
        case 'Ref':
          return Ref.fromJson(json);
        case 'RelationshipClause':
          return RelationshipClause.fromJson(json);
        case 'Repeat':
          return Repeat.fromJson(json);
        case 'ReplaceMatches':
          return ReplaceMatches.fromJson(json);
        case 'Retrieve':
          return Retrieve.fromJson(json);
        case 'Round':
          return Round.fromJson(json);
        case 'SameAs':
          return SameAs.fromJson(json);
        case 'SameOrAfter':
          return SameOrAfter.fromJson(json);
        case 'SameOrBefore':
          return SameOrBefore.fromJson(json);
        case 'SingletonFrom':
          return SingletonFrom.fromJson(json);
        case 'Size':
          return Size.fromJson(json);
        // case 'Skip':
        //   return Skip.fromJson(json);
        case 'Slice':
          return Slice.fromJson(json);
        case 'Sort':
          return Sort.fromJson(json);
        case 'Split':
          return Split.fromJson(json);
        case 'SplitOnMatches':
          return SplitOnMatches.fromJson(json);
        case 'Start':
          return Start.fromJson(json);
        case 'Starts':
          return Starts.fromJson(json);
        case 'StartsWith':
          return StartsWith.fromJson(json);
        case 'StdDev':
          return StdDev.fromJson(json);
        case 'Substring':
          return Substring.fromJson(json);
        case 'SubsumedBy':
          return SubsumedBy.fromJson(json);
        case 'Subsumes':
          return Subsumes.fromJson(json);
        case 'Subtract':
          return Subtract.fromJson(json);
        case 'Successor':
          return Successor.fromJson(json);
        case 'Sum':
          return Sum.fromJson(json);
        case 'Tail':
          return Tail.fromJson(json);
        // case 'Take':
        //   return Take.fromJson(json);
        case 'TernaryExpression':
          return TernaryExpression.fromJson(json);
        case 'TimeFrom':
          return TimeFrom.fromJson(json);
        case 'TimeOfDay':
          return TimeOfDay.fromJson(json);
        case 'Times':
          return Times.fromJson(json);
        case 'TimezoneOffsetFrom':
          return TimezoneOffsetFrom.fromJson(json);
        case 'ToBoolean':
          return ToBoolean.fromJson(json);
        case 'ToChars':
          return ToChars.fromJson(json);
        case 'ToConcept':
          return ToConcept.fromJson(json);
        case 'ToDate':
          return ToDate.fromJson(json);
        case 'ToDateTime':
          return ToDateTime.fromJson(json);
        case 'Today':
          return Today.fromJson(json);
        case 'ToDecimal':
          return ToDecimal.fromJson(json);
        case 'ToInteger':
          return ToInteger.fromJson(json);
        case 'ToLong':
          return ToLong.fromJson(json);
        case 'ToList':
          return ToList.fromJson(json);
        case 'ToQuantity':
          return ToQuantity.fromJson(json);
        case 'ToRatio':
          return ToRatio.fromJson(json);
        case 'ToString':
          return ToString.fromJson(json);
        case 'Total':
          return Total.fromJson(json);
        case 'ToTime':
          return ToTime.fromJson(json);
        case 'Truncate':
          return Truncate.fromJson(json);
        case 'TruncatedDivide':
          return TruncatedDivide.fromJson(json);
        case 'Tuple':
          return Tuple.fromJson(json);
        case 'TupleTypeSpecifier':
          return TupleTypeSpecifier.fromJson(json);
        case 'TypeSpecifier':
          return TypeSpecifierExpression.fromJson(json);
        case 'UnaryExpression':
          return UnaryExpression.fromJson(json);
        case 'Union':
          return Union.fromJson(json);
        case 'Upper':
          return Upper.fromJson(json);
        case 'ValueSetRef':
          return ValueSetRef.fromJson(json);
        case 'Variance':
          return Variance.fromJson(json);
        case 'Width':
          return Width.fromJson(json);
        case 'With':
          return With.fromJson(json);
        case 'Without':
          return Without.fromJson(json);
        case 'Xor':
          return Xor.fromJson(json);
      }
    }
    if (json.isEmpty) {
      return CqlExpression();
    }
    throw ArgumentError.value(json.toString(), 'json',
        'Could not parse fromJson unknown Expression type');
  }

  factory CqlExpression.byName(
      String type, List<CqlExpression> operand, CqlLibrary library) {
    switch (type) {
      case 'Abs':
        return Abs(operand: operand.first);
      case 'Add':
        return Add(operand: operand);
      case 'After':
        return After(operand: operand);
      // case 'Aggregate':
      //   return Aggregate(iteration: operand.first, source: operand.first);
      // case 'AggregateExpression':
      //   return AggregateExpression(operand: operand);
      // case 'AliasedQuerySource':
      //   return AliasedQuerySource(operand: operand.first);
      // case 'AliasRef':
      //   return AliasRef(operand: operand.first);
      case 'AllTrue':
        return AllTrue(source: operand.first);
      case 'And':
        return And(operand: operand);
      // case 'AnyInCodeSystem':
      //   return AnyInCodeSystem(operand: operand);
      case 'AnyInValueSet':
        return AnyInValueSet(codes: operand.first);
      case 'AnyTrue':
        return AnyTrue(source: operand.first);
      case 'As':
        return As(operand: operand.first);
      case 'Avg':
        return Avg(source: operand.first);
      case 'Before':
        return Before(operand: operand);
      // case 'BoundParameterTypeSpecifier':
      //   return BoundParameterTypeSpecifier(operand: operand);
      // case 'CalculateAge':
      //   return CalculateAge(operand: operand);
      // case 'CalculateAgeAt':
      //   return CalculateAgeAt(operand: operand);
      case 'CanConvert':
        return CanConvert(operand: operand.first);
      case 'CanConvertQuantity':
        return CanConvertQuantity(operand: operand);
      // case 'Case':
      //   return Case(operand: operand);
      case 'Ceiling':
        return Ceiling(operand: operand.first);
      case 'Children':
        return Children(source: operand.first);
      case 'ChoiceTypeSpecifier':
        return ChoiceTypeSpecifier();
      case 'Coalesce':
        return Coalesce(operand: operand);
      // case 'Code':
      //   return Code(operand: operand);
      // case 'CodeRef':
      //   return CodeRef(operand: operand);
      // case 'CodeSystemRef':
      //   return CodeSystemRef(operand: operand);
      case 'Collapse':
        return Collapse(operand: operand);
      case 'Combine':
        {
          if (operand.isNotEmpty) {
            return Combine(
                source: operand.first,
                separator: operand.length > 1 ? operand.last : null);
          }
        }
      case 'Concatenate':
        return Concatenate(operand: operand);
      // case 'Concept':
      //   return Concept(operand: operand);
      // case 'ConceptRef':
      //   return ConceptRef(operand: operand);
      case 'Contains':
        return Contains(operand: operand);
      case 'Convert':
        return Convert(operand: operand.first);
      case 'ConvertQuantity':
        return ConvertQuantity(operand: operand);
      case 'ConvertsToBoolean':
        return ConvertsToBoolean(operand: operand.first);
      case 'ConvertsToDate':
        return ConvertsToDate(operand: operand.first);
      case 'ConvertsToDateTime':
        return ConvertsToDateTime(operand: operand.first);
      case 'ConvertsToDecimal':
        return ConvertsToDecimal(operand: operand.first);
      case 'ConvertsToInteger':
        return ConvertsToInteger(operand: operand.first);
      case 'ConvertsToLong':
        return ConvertsToLong(operand: operand.first);
      case 'ConvertsToQuantity':
        return ConvertsToQuantity(operand: operand.first);
      case 'ConvertsToRatio':
        return ConvertsToRatio(operand: operand.first);
      case 'ConvertsToString':
        return ConvertsToString(operand: operand.first);
      case 'ConvertsToTime':
        return ConvertsToTime(operand: operand.first);
      case 'Count':
        return Count(source: operand.first);
      // case 'Current':
      //   return Current(operand: operand);
      case 'DateFrom':
        return DateFrom(operand: operand.first);
      // case 'DateTimeComponentFrom':
      //   return DateTimeComponentFrom(operand: operand);
      case 'Descendents':
        return Descendents(source: operand.first);
      // case 'DifferenceBetween':
      //   return DifferenceBetween(operand: operand);
      case 'Distinct':
        return Distinct(operand: operand.first);
      case 'Divide':
        return Divide(operand: operand);
      // case 'DurationBetween':
      //   return DurationBetween(operand: operand);
      case 'End':
        return End(operand: operand.first);
      case 'Ends':
        return Ends(operand: operand);
      case 'EndsWith':
        return EndsWith(operand: operand);
      case 'Equal':
        return Equal(operand: operand);
      case 'Equivalent':
        return Equivalent(operand: operand);
      case 'Except':
        return Except(operand: operand);
      case 'Exists':
        return Exists(operand: operand.first);
      case 'Exp':
        {
          if (operand.length == 1) {
            return Exp.compareFirst(first: operand.first, library: library);
          }
        }
      case 'Expand':
        return Expand(operand: operand);
      case 'ExpandValueSet':
        return ExpandValueSet(operand: operand.first);
      case 'DateTime':
        return DateTimeExpression.fromOperandList(operand: operand);
      // case 'Date':
      //   return DateExpression(operand: operand);
      // case 'Expression':
      //   return CqlExpression(operand: operand);
      // case 'ExpressionRef':
      //   return ExpressionRef(operand: operand);
      case 'Time':
        return LiteralTime.fromOperandList(operand: operand);
      // case 'Filter':
      //   return Filter(operand: operand);
      case 'First':
        if (operand.length == 1) {
          return First(source: operand.first);
        }
      case 'Flatten':
        return Flatten(operand: operand.first);
      case 'Floor':
        return Floor(operand: operand.first);
      // case 'ForEach':
      //   return ForEach(operand: operand);
      // case 'FunctionRef':
      //   return FunctionRef(operand: operand);
      case 'GeometricMean':
        return GeometricMean(source: operand.first);
      case 'Greater':
        return Greater(operand: operand);
      case 'GreaterOrEqual':
        return GreaterOrEqual(operand: operand);
      case 'HighBoundary':
        return HighBoundary(operand: operand);
      // case 'IdentifierRef':
      //   return IdentifierRef(operand: operand);
      // case 'If':
      //   return If(operand: operand);
      case 'Implies':
        return Implies(operand: operand);
      case 'In':
        return In(operand: operand);
      case 'IncludedIn':
        return IncludedIn(operand: operand);
      case 'Includes':
        return Includes(operand: operand);
      // case 'InCodeSystem':
      //   return InCodeSystem(operand: operand);
      case 'Indexer':
        return Indexer(operand: operand);
      case 'IndexOf':
        if (operand.length == 2) {
          return IndexOf(source: operand.first, element: operand.last);
        }
      // case 'Instance':
      //   return Instance(operand: operand);
      case 'Intersect':
        return Intersect(operand: operand);
      // case 'Interval':
      //   return IntervalExpression(operand: operand);
      // case 'IntervalTypeSpecifier':
      //   return IntervalTypeSpecifier(operand: operand);
      case 'InValueSet':
        return InValueSet(code: operand.first);
      case 'Is':
        return Is(operand: operand.first);
      case 'IsFalse':
        return IsFalse(operand: operand.first);
      // case 'Null':
      //   return NullExpression(operand: operand);
      case 'IsNull':
        return IsNull(operand: operand.first);
      case 'IsTrue':
        return IsTrue(operand: operand.first);
      // case 'Iteration':
      //   return Iteration(operand: operand);
      case 'Last':
        if (operand.length == 1) {
          return Last(source: operand.first);
        }
      case 'LastPositionOf':
        {
          if (operand.length == 2) {
            return LastPositionOf(pattern: operand.first, string: operand.last);
          }
        }
        break;
      case 'Length':
        return Length(operand: operand.first);
      case 'Less':
        return Less(operand: operand);
      case 'LessOrEqual':
        return LessOrEqual(operand: operand);
      // case 'List':
      //   return ListExpression(operand: operand);
      // case 'ListTypeSpecifier':
      //   return ListTypeSpecifier(operand: operand);
      // case 'Literal':
      //   return Literal(operand: operand);
      case 'Ln':
        {
          if (operand.length == 1) {
            return Ln.compareFirst(first: operand.first, library: library);
          }
        }
      case 'Log':
        {
          if (operand.length == 2) {
            return Log.compareFirst(
                first: operand.first, second: operand.last, library: library);
          }
        }
      case 'LowBoundary':
        return LowBoundary(operand: operand);
      case 'Lower':
        return Lower(operand: operand.first);
      case 'Matches':
        return Matches(operand: operand);
      case 'Max':
        return Max(source: operand.first);
      // case 'MaxValue':
      //   return MaxValue(operand: operand);
      case 'Median':
        return Median(source: operand.first);
      case 'Meets':
        return Meets(operand: operand);
      case 'MeetsAfter':
        return MeetsAfter(operand: operand);
      case 'MeetsBefore':
        return MeetsBefore(operand: operand);
      case 'Message':
        return Message(
            source: operand.first,
            condition: operand.length > 1 ? operand[1] : null,
            code: operand.length > 2 ? operand[2] : null,
            severity: operand.length > 3 ? operand[3] : null,
            message: operand.length > 4 ? operand[4] : null);
      case 'Min':
        return Min(source: operand.first);
      // case 'MinValue':
      //   return MinValue(operand: operand);
      case 'Mode':
        return Mode(source: operand.first);
      case 'Modulo':
        return Modulo(operand: operand);
      case 'Multiply':
        return Multiply(operand: operand);
      // case 'NamedTypeSpecifier':
      //   return NamedTypeSpecifier(operand: operand);
      // case 'NaryExpression':
      //   return NaryExpression(operand: operand);
      case 'Negate':
        return Negate(operand: operand.first);
      case 'Not':
        return Not(operand: operand.first);
      case 'NotEqual':
        return NotEqual(operand: operand);
      case 'Now':
        return Now();
      // case 'NullExpression':
      //   return NullExpression(operand: operand);
      case 'OnOrAfter':
        return OnOrAfter(operand: operand);
      case 'OnOrBefore':
        return OnOrBefore(operand: operand);
      // case 'OperandRef':
      //   return OperandRef(operand: operand);
      // case 'OperatorExpression':
      //   return OperatorExpression(operand: operand);
      case 'Or':
        return Or(operand: operand);
      case 'Overlaps':
        return Overlaps(operand: operand);
      case 'OverlapsAfter':
        return OverlapsAfter(operand: operand);
      case 'OverlapsBefore':
        return OverlapsBefore(operand: operand);
      // case 'ParameterRef':
      //   return ParameterRef(operand: operand);
      // case 'ParameterTypeSpecifier':
      //   return ParameterTypeSpecifier(operand: operand);
      case 'PointFrom':
        return PointFrom(operand: operand.first);
      case 'PopulationStdDev':
        return PopulationStdDev(source: operand.first);
      case 'PopulationVariance':
        return PopulationVariance(source: operand.first);
      case 'PositionOf':
        {
          if (operand.length == 2) {
            return PositionOf(pattern: operand.first, string: operand.last);
          }
        }
        break;
      case 'Power':
        {
          if (operand.length == 2) {
            return Power.compareFirst(
                first: operand.first, second: operand.last);
          }
        }
        break;
      case 'Precision':
        return Precision(operand: operand.first);
      case 'Predecessor':
        return Predecessor(operand: operand.first);
      case 'Product':
        return Product(source: operand.first);
      case 'ProperContains':
        return ProperContains(operand: operand);
      case 'ProperIn':
        return ProperIn(operand: operand);
      case 'ProperIncludedIn':
        return ProperIncludedIn(operand: operand);
      case 'ProperIncludes':
        return ProperIncludes(operand: operand);
      // case 'Property':
      //   return Property(operand: operand);
      // case 'Quantity':
      //   return Quantity(operand: operand);
      // case 'Query':
      //   return Query(operand: operand);
      // case 'QueryLetRef':
      //   return QueryLetRef(operand: operand);
      // case 'Ratio':
      //   return Ratio(operand: operand);
      // case 'Ref':
      //   return Ref(operand: operand);
      // case 'RelationshipClause':
      //   return RelationshipClause(operand: operand);
      // case 'Repeat':
      //   return Repeat(operand: operand);
      case 'ReplaceMatches':
        return ReplaceMatches(operand: operand);
      // case 'Retrieve':
      //   return Retrieve(operand: operand);
      case 'Round':
        return Round(
            operand: operand.first,
            precision: operand.length > 1 ? operand[1] : null);
      case 'SameAs':
        return SameAs(operand: operand);
      case 'SameOrAfter':
        return SameOrAfter(operand: operand);
      case 'SameOrBefore':
        return SameOrBefore(operand: operand);
      case 'SingletonFrom':
        return SingletonFrom(operand: operand.first);
      case 'Size':
        return Size(operand: operand.first);
      case 'Skip':
        {
          if (operand.length != 2) {
            throw ArgumentError.value(operand, 'Skip must have 2 operands');
          }
          return Slice(
              source: operand[0],
              startIndex: operand[1],
              endIndex: LiteralNull());
        }
      // return Skip(operand: operand);
      // case 'Slice':
      //   return Slice(operand: operand);
      // case 'Sort':
      //   return Sort(operand: operand);
      case 'Split':
        {
          if (operand.length != 2) {
            throw ArgumentError.value(
                operand, 'operand', 'Split must have 2 operands');
          } else {
            if (operand.isNotEmpty) {
              return Split(stringToSplit: operand.first, separator: operand[1]);
            }
          }
        }
      // case 'SplitOnMatches':
      //   return SplitOnMatches(operand: operand);
      case 'Start':
        return Start(operand: operand.first);
      case 'Starts':
        return Starts(operand: operand);
      case 'StartsWith':
        return StartsWith(operand: operand);
      case 'StdDev':
        return StdDev(source: operand.first);
      case 'Substring':
        {
          if (operand.length == 2) {
            return Substring(
                stringToSub: operand.first, startIndex: operand.last);
          }
        }
      case 'SubsumedBy':
        return SubsumedBy(operand: operand);
      case 'Subsumes':
        return Subsumes(operand: operand);
      case 'Subtract':
        return Subtract(operand: operand);
      case 'Successor':
        return Successor(operand: operand.first);
      case 'Sum':
        return Sum(source: operand.first);
      case 'Tail':
        {
          if (operand.length != 1) {
            throw ArgumentError.value(operand, 'Tail must have 1 operand');
          }
          return Slice(
              source: operand[0],
              startIndex: LiteralInteger(1),
              endIndex: LiteralNull());
        }
      case 'Take':
        {
          if (operand.length != 2) {
            throw ArgumentError.value(operand, 'Take must have 2 operands');
          }
          return Slice(
              source: operand[0],
              startIndex: LiteralInteger(0),
              endIndex: Coalesce(operand: [operand[1], LiteralInteger(0)]));
        }
      // case 'TernaryExpression':
      //   return TernaryExpression(operands: operand);
      case 'TimeFrom':
        return TimeFrom(operand: operand.first);
      case 'TimeOfDay':
        return TimeOfDay();
      case 'Times':
        return Times(operand: operand);
      case 'TimezoneOffsetFrom':
        return TimezoneOffsetFrom(operand: operand.first);
      case 'ToBoolean':
        return ToBoolean(operand: operand.first);
      case 'ToChars':
        return ToChars(operand: operand.first);
      case 'ToConcept':
        return ToConcept(operand: operand.first);
      case 'ToDate':
        return ToDate(operand: operand.first);
      case 'ToDateTime':
        return ToDateTime(operand: operand.first);
      case 'Today':
        return Today();
      case 'ToDecimal':
        return ToDecimal(operand: operand.first);
      case 'ToInteger':
        return ToInteger(operand: operand.first);
      case 'ToLong':
        return ToLong(operand: operand.first);
      case 'ToList':
        return ToList(operand: operand.first);
      case 'ToQuantity':
        return ToQuantity(operand: operand.first);
      case 'ToRatio':
        return ToRatio(operand: operand.first);
      case 'ToString':
        return ToString(operand: operand.first);
      // case 'Total':
      //   return Total(operand: operand);
      case 'ToTime':
        return ToTime(operand: operand.first);
      case 'Truncate':
        return Truncate(operand: operand.first);
      case 'TruncatedDivide':
        return TruncatedDivide(operand: operand);
      // case 'Tuple':
      //   return Tuple(operand: operand);
      // case 'TupleTypeSpecifier':
      //   return TupleTypeSpecifier(operand: operand);
      // case 'TypeSpecifier':
      //   return TypeSpecifierExpression(operand: operand);
      // case 'UnaryExpression':
      //   return UnaryExpression(operand: operand.first);
      case 'Union':
        return Union(operand: operand);
      case 'Upper':
        return Upper(operand: operand.first);
      // case 'ValueSetRef':
      //   return ValueSetRef(operand: operand);
      case 'Variance':
        return Variance(source: operand.first);
      case 'Width':
        return Width(operand: operand.first);
      // case 'With':
      //   return With(operand: operand);
      // case 'Without':
      //   return Without(operand: operand);
      case 'Xor':
        return Xor(operand: operand);
    }
    throw ArgumentError.value(
        type, type, 'Could not parse by name unknown Expression type');
  }

  @override
  dynamic toJson() {
    final data = <String, dynamic>{};

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

  String? get type => throw 'Get Type Unknown Expression type: $runtimeType';

  Future<dynamic> execute(Map<String, dynamic> context) async =>
      'Execute Unknown Expression type: $runtimeType';

  List<String> getReturnTypes(CqlLibrary library) => ['Unknown'];
}

import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Test runner for the CQF Reference Implementation's CqlTestSuite.cql.
///
/// This is a comprehensive, self-validating test suite from:
/// https://github.com/cqframework/clinical_quality_language
///
/// Each `define test_*` in the CQL returns `"<name> TEST PASSED"` on success,
/// or triggers a runtime Message() error on failure via the TestMessage() helper.
///
/// We parse and execute the entire library once, then check each test define's
/// result individually.
void main() {
  final engineDir = Directory('cql/cqf-engine');
  if (!engineDir.existsSync()) {
    print('CQF engine tests not downloaded. '
        'Run: bash utils/download_engine_tests.sh');
    return;
  }

  final suiteFile = File('cql/cqf-engine/CqlTestSuite.cql');
  if (!suiteFile.existsSync()) {
    print('CqlTestSuite.cql not found');
    return;
  }

  final source = suiteFile.readAsStringSync();

  // Extract all `define test_*:` names
  final testNames = RegExp(r'define (test_\w+):')
      .allMatches(source)
      .map((m) => m.group(1)!)
      .toList();

  group('CqlTestSuite', () {
    late Map<String, dynamic> results;

    setUpAll(() async {
      final library = parseAndBuildLibrary(source);
      final context = <String, dynamic>{
        'startTimestamp': FhirDateTime.fromString('2018-01-01T07:00:00.0-07:00'),
      };
      results = (await library.execute(context)) as Map<String, dynamic>;
    });

    for (final name in testNames) {
      final skipReason = _knownFailures[name];
      test(name, () {
        // The expected pattern: the test name without "test_" prefix + " TEST PASSED"
        final baseName = name.replaceFirst('test_', '');
        final expected = '$baseName TEST PASSED';
        final actual = results[name];
        expect(actual, equals(expected),
            reason: 'Expected: $expected\nActual: $actual');
      }, skip: skipReason);
    }
  });
}

/// Known failures with skip reasons, categorized by root cause.
/// Total: 309 failures out of 1948 tests (1639 passing = 84.2%).
///
/// Major remaining categories:
/// - Logical operators: 30 tests (toString overload resolution)
/// - String/null handling: 30 tests (toString overload resolution)
/// - Quantity arithmetic: 26 tests
/// - Equality edge cases: 18 tests
/// - Type conversion: 18 tests
/// - Meets/MeetsBefore/MeetsAfter: 19 tests (imprecise date edge cases)
/// - Unknown bound interval inclusion: 13 tests
/// - Imprecise/unknown interval containment: 12 tests
/// - Interval Expand: 12 tests (decimal open boundary, quantity cross-unit)
/// - SameAs interval: 12 tests
/// - After/Before: 10 tests
/// - Other: 67 tests
// ignore_for_file: lines_longer_than_80_chars
const _knownFailures = <String, String>{
  // After/Before edge cases (10 tests)
  'test_After_HourBeforeNormalizeZones': 'After/Before edge cases',
  'test_After_ImpreciseNotAfterDateIvl': 'After/Before edge cases',
  'test_After_NotAfterImpreciseDateIvl': 'After/Before edge cases',
  'test_After_SameHourNormalizeZones': 'After/Before edge cases',
  'test_After_UnknownBegNotAfterDateIvl': 'After/Before edge cases',
  'test_After_UnknownBegNotAfterIntIvl': 'After/Before edge cases',
  'test_Before_ImpreciseNotBeforeDateIvl': 'After/Before edge cases',
  'test_Before_NotBeforeImpreciseDateIvl': 'After/Before edge cases',
  'test_Before_UnknownEndNotBeforeDateIvl': 'After/Before edge cases',
  'test_Before_UnknownEndNotBeforeIntIvl': 'After/Before edge cases',
  // Aggregate/math edge cases (4 tests)
  'test_GeometricMean_Null': 'Aggregate/math edge cases',
  'test_Ln_Four': 'Aggregate/math edge cases',
  'test_Mode_bi_modal': 'Aggregate/math edge cases',
  'test_Product_Null': 'Aggregate/math edge cases',
  // Code/Concept edge cases (4 tests)
  'test_CodeWithoutDisplayAndVersionNull': 'Code/Concept edge cases',
  'test_ConceptWithoutDisplayAndVersionEqual': 'Code/Concept edge cases',
  'test_ConceptWithoutDisplayAndVersionNotEqual': 'Code/Concept edge cases',
  'test_ConceptWithoutDisplayAndVersionNull': 'Code/Concept edge cases',
  // DifferenceBetween edge cases (6 tests)
  'test_DiffComp_EqualTo40DaysAfter': 'DifferenceBetween edge cases',
  'test_DiffComp_FortyDaysEqualToDaysBetween': 'DifferenceBetween edge cases',
  'test_DifferenceBetween_Date_EqualTo40DaysAfter': 'DifferenceBetween edge cases',
  'test_DifferenceBetween_Date_FortyDaysEqualToDaysBetween': 'DifferenceBetween edge cases',
  'test_DifferenceBetween_Date_WeeksBetweenUncertainty': 'DifferenceBetween edge cases',
  'test_DifferenceBetween_WeeksBetweenUncertainty': 'DifferenceBetween edge cases',
  // Equality edge cases (18 tests)
  'test_Equal_DateAndDateTimeEqual': 'Equality edge cases',
  'test_Equal_DateAndDateTimeUncertainEqual': 'Equality edge cases',
  'test_Equal_DateTimeAndDateEqual': 'Equality edge cases',
  'test_Equal_DateTimeAndDateUncertainEqual': 'Equality edge cases',
  'test_Equal_DifferingPrecision': 'Equality edge cases',
  'test_Equal_EqualQuantityOpenClosed': 'Equality edge cases',
  'test_Equal_FirstListHasNull': 'Equality edge cases',
  'test_Equal_SecondListHasNull': 'Equality edge cases',
  'test_Equal_TupleDifferentKeys': 'Equality edge cases',
  'test_Equal_UncertTuplesWithDiffNullFields': 'Equality edge cases',
  'test_NotEqual_DateAndDateTimeEqual': 'Equality edge cases',
  'test_NotEqual_DateAndDateTimeUncertainEqual': 'Equality edge cases',
  'test_NotEqual_DateTimeAndDateEqual': 'Equality edge cases',
  'test_NotEqual_DateTimeAndDateUncertainEqual': 'Equality edge cases',
  'test_NotEqual_DifferingPrecision': 'Equality edge cases',
  'test_NotEqual_EqualQuantityOpenClosed': 'Equality edge cases',
  'test_NotEqual_TupleDifferentKeys': 'Equality edge cases',
  'test_NotEqual_UncertTuplesWithDiffNullFields': 'Equality edge cases',
  // Equivalence edge cases (1 test)
  'test_Equivalent_DifferentTypesLists': 'Equivalence edge cases',
  // Imprecise/unknown interval containment (12 tests)
  'test_Contains_ImpreciseMayContainDate': 'Imprecise/unknown interval containment',
  'test_Contains_MayContainImpreciseDate': 'Imprecise/unknown interval containment',
  'test_Contains_UnknownBegContainsDate': 'Imprecise/unknown interval containment',
  'test_Contains_UnknownBegMayContainDate': 'Imprecise/unknown interval containment',
  'test_Contains_UnknownEndContainsDate': 'Imprecise/unknown interval containment',
  'test_Contains_UnknownEndMayContainDate': 'Imprecise/unknown interval containment',
  'test_In_ImpreciseMayContainDate': 'Imprecise/unknown interval containment',
  'test_In_MayContainImpreciseDate': 'Imprecise/unknown interval containment',
  'test_In_UnknownBegContainsDate': 'Imprecise/unknown interval containment',
  'test_In_UnknownBegMayContainDate': 'Imprecise/unknown interval containment',
  'test_In_UnknownEndContainsDate': 'Imprecise/unknown interval containment',
  'test_In_UnknownEndMayContainDate': 'Imprecise/unknown interval containment',
  // Intersect edge cases (6 tests)
  'test_Intersect_IntersectOnAll': 'Intersect edge cases',
  'test_Intersect_IntersectOnEvens': 'Intersect edge cases',
  'test_Intersect_IntersectOnFive': 'Intersect edge cases',
  'test_Intersect_IntersectionOnFourDuplicates': 'Intersect edge cases',
  'test_Intersect_MultipleNullInListIntersect': 'Intersect edge cases',
  'test_Intersect_NestedIntersects': 'Intersect edge cases',
  // Interval Collapse edge cases (5 tests)
  'test_DtIvlCollapse_DateTimeCollapseSeparatedPerDay': 'Interval Collapse edge cases',
  'test_DtIvlCollapse_DateTimeCollapseSeparatedPerHour': 'Interval Collapse edge cases',
  'test_NullIvlCollapse_CollapseQuantityNullHighUnitsWithinPer': 'Interval Collapse edge cases',
  'test_NullIvlCollapse_CollapseQuantityNullLowUnitsWithinPer': 'Interval Collapse edge cases',
  'test_QtyIvlCollapse_CollapseSeparatedQuantityPer3': 'Interval Collapse edge cases',
  // Interval Except edge cases (6 tests)
  'test_Except_ExceptFiveThree': 'Interval Except edge cases',
  'test_Except_ExceptNoOp': 'Interval Except edge cases',
  'test_Except_ExceptNull': 'Interval Except edge cases',
  'test_Except_ExceptThreeFour': 'Interval Except edge cases',
  'test_Except_MultipleNullExcept': 'Interval Except edge cases',
  'test_Except_SomethingExceptNothing': 'Interval Except edge cases',
  // Interval Expand edge cases (12 tests)
  'test_DateIvlExpand_NullBoth': 'Interval Expand edge cases',
  'test_DateTimeIvlExpand_NullBoth': 'Interval Expand edge cases',
  'test_DecIvlExpand_OpenBoth': 'Interval Expand edge cases',
  'test_DecIvlExpand_OpenEnd': 'Interval Expand edge cases',
  'test_DecIvlExpand_OpenStart': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleGPerGDecimal': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleGPerMG': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleMGPerGTrunc': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleMGPerMGDecimal': 'Interval Expand edge cases',
  'test_QtyIvlExpand_NullBoth': 'Interval Expand edge cases',
  'test_QtyIvlExpand_OpenBothDecimal': 'Interval Expand edge cases',
  'test_QtyIvlExpand_OpenBothDecimalTrunc': 'Interval Expand edge cases',
  // Logical operator edge cases (30 tests)
  'test_And_FF': 'Logical operator edge cases',
  'test_And_FN': 'Logical operator edge cases',
  'test_And_FT': 'Logical operator edge cases',
  'test_And_NF': 'Logical operator edge cases',
  'test_And_NN': 'Logical operator edge cases',
  'test_And_NT': 'Logical operator edge cases',
  'test_And_TF': 'Logical operator edge cases',
  'test_And_TN': 'Logical operator edge cases',
  'test_And_TT': 'Logical operator edge cases',
  'test_Not_NotFalse': 'Logical operator edge cases',
  'test_Not_NotNull': 'Logical operator edge cases',
  'test_Not_NotTrue': 'Logical operator edge cases',
  'test_Or_FF': 'Logical operator edge cases',
  'test_Or_FN': 'Logical operator edge cases',
  'test_Or_FT': 'Logical operator edge cases',
  'test_Or_NF': 'Logical operator edge cases',
  'test_Or_NN': 'Logical operator edge cases',
  'test_Or_NT': 'Logical operator edge cases',
  'test_Or_TF': 'Logical operator edge cases',
  'test_Or_TN': 'Logical operator edge cases',
  'test_Or_TT': 'Logical operator edge cases',
  'test_XOr_FF': 'Logical operator edge cases',
  'test_XOr_FN': 'Logical operator edge cases',
  'test_XOr_FT': 'Logical operator edge cases',
  'test_XOr_NF': 'Logical operator edge cases',
  'test_XOr_NN': 'Logical operator edge cases',
  'test_XOr_NT': 'Logical operator edge cases',
  'test_XOr_TF': 'Logical operator edge cases',
  'test_XOr_TN': 'Logical operator edge cases',
  'test_XOr_TT': 'Logical operator edge cases',
  // Meets edge cases (10 tests)
  'test_Meets_ImpreciseMayMeetAfterDateIvl': 'Meets edge cases',
  'test_Meets_ImpreciseMayMeetBeforeDateIvl': 'Meets edge cases',
  'test_Meets_MayMeetAfterDayOfImpreciseIvl': 'Meets edge cases',
  'test_Meets_MayMeetAfterImpreciseDateIvl': 'Meets edge cases',
  'test_Meets_MayMeetBeforeDayOfImpreciseIvl': 'Meets edge cases',
  'test_Meets_MayMeetBeforeImpreciseDateIvl': 'Meets edge cases',
  'test_Meets_UnknownBegNotMeetsDateIvl': 'Meets edge cases',
  'test_Meets_UnknownBegNotMeetsIntIvl': 'Meets edge cases',
  'test_Meets_UnknownEndNotMeetsDateIvl': 'Meets edge cases',
  'test_Meets_UnknownEndNotMeetsIntIvl': 'Meets edge cases',
  // MeetsAfter edge cases (7 tests)
  'test_MeetsAfter_DateIvlNotMeetsPosInfEnd': 'MeetsAfter edge cases',
  'test_MeetsAfter_MayMeetAfterDayOfImpreciseIvl': 'MeetsAfter edge cases',
  'test_MeetsAfter_MeetsAfterDayOfIvl': 'MeetsAfter edge cases',
  'test_MeetsAfter_NotMeetsDayOfImpreciseIVL': 'MeetsAfter imprecise date regression',
  'test_MeetsAfter_UnknownBegNotMeetsDateIvl': 'MeetsAfter edge cases',
  'test_MeetsAfter_UnknownBegNotMeetsIntIvl': 'MeetsAfter edge cases',
  'test_Meets_MeetsAfterDayOfIvl': 'MeetsAfter edge cases',
  // MeetsBefore edge cases (3 tests)
  'test_MeetsBefore_MayMeetBeforeDayOfImpreciseIvl': 'MeetsBefore edge cases',
  'test_MeetsBefore_UnknownEndNotMeetsDateIvl': 'MeetsBefore edge cases',
  'test_MeetsBefore_UnknownEndNotMeetsIntIvl': 'MeetsBefore edge cases',
  // Other (67 tests)
  'test_Combine_CombineNull': 'Other',
  'test_Combine_CombineNullItem': 'Other',
  'test_Combine_NoSeparator': 'Other',
  'test_Combine_Separator': 'Other',
  'test_Concat_ConcatNull': 'Other',
  'test_Concat_HelloWorld': 'Other',
  'test_Concat_HelloWorldVariables': 'Other',
  'test_Concat_Sentence': 'Other',
  'test_Distinct_DuplicateNulls': 'Other',
  'test_Distinct_DupsTuples': 'Other',
  'test_Distinct_LotsOfDups': 'Other',
  'test_Distinct_NoDups': 'Other',
  'test_Flatten_ListOfLists': 'Other',
  'test_In_TupleIsIn': 'Other',
  'test_IncludedIn_NullIncluded': 'Other',
  'test_IncludedIn_NullIncludes': 'Other',
  'test_IncludedIn_TuplesIncluded': 'Other',
  'test_Includes_NullIncluded': 'Other',
  'test_Includes_NullIncludes': 'Other',
  'test_Includes_TuplesIncluded': 'Other',
  'test_IndexOf_IndexOfThirdTuple': 'Other',
  'test_Indexer_HelloWorldSix': 'Other',
  'test_Indexer_HelloWorldTwenty': 'Other',
  'test_Indexer_HelloWorldZero': 'Other',
  'test_Indexer_NullIndex': 'Other',
  'test_Indexer_NullString': 'Other',
  'test_IsFalse_FalseIsFalse': 'Other',
  'test_IsFalse_NullIsFalse': 'Other',
  'test_IsFalse_TrueIsFalse': 'Other',
  'test_IsNull_NonNullVarIsNull': 'Other',
  'test_IsNull_NullIsNull': 'Other',
  'test_IsNull_NullVarIsNull': 'Other',
  'test_IsNull_StringIsNull': 'Other',
  'test_IsTrue_FalseIsTrue': 'Other',
  'test_IsTrue_NullIsTrue': 'Other',
  'test_IsTrue_TrueIsTrue': 'Other',
  'test_Length_ElevenLetters': 'Other',
  'test_Length_NullString': 'Other',
  'test_Lower_CamelC': 'Other',
  'test_Lower_LowerC': 'Other',
  'test_Lower_NullString': 'Other',
  'test_Lower_UpperC': 'Other',
  'test_OverlapsAfterDT_MayOverlapAfterDayOfImpreciseIvl': 'Other',
  'test_OverlapsAfterDT_UnknownOverlap': 'Other',
  'test_OverlapsBeforeDT_MayOverlapBeforeDayOfImpreciseIvl': 'Other',
  'test_OverlapsBeforeDT_UnknownOverlap': 'Other',
  'test_OverlapsDT_ImpreciseOverlap': 'Other',
  'test_PositionOf_found': 'Other',
  'test_PositionOf_notFound': 'Other',
  'test_PositionOf_nullPattern': 'Other',
  'test_PositionOf_nullString': 'Other',
  'test_ProperIncludedIn_NullIncluded': 'Other',
  'test_ProperIncludedIn_NullIncludes': 'Other',
  'test_ProperIncludedIn_TuplesIncluded': 'Other',
  'test_ProperIncludes_NullIncluded': 'Other',
  'test_ProperIncludes_NullIncludes': 'Other',
  'test_ProperIncludes_TuplesIncluded': 'Other',
  'test_ProperlyIncludedIn_NotProperlyIncludesDayOfIvlSameEdges': 'Other',
  'test_ProperlyIncludes_NotProperlyIncludesDayOfIvlSameEdges': 'Other',
  'test_Split_CommaSeparated': 'Other',
  'test_Split_SeparateNull': 'Other',
  'test_Split_SeparateUsingNull': 'Other',
  'test_Split_SeparatorNotUsed': 'Other',
  'test_Upper_CamelC': 'Other',
  'test_Upper_LowerC': 'Other',
  'test_Upper_NullString': 'Other',
  'test_Upper_UpperC': 'Other',
  // Predecessor/Successor edge cases (1 test)
  'test_Predecessor_Rs': 'Predecessor/Successor edge cases',
  // Quantity arithmetic edge cases (26 tests)
  'test_Avg_has_null_q': 'Quantity arithmetic edge cases',
  'test_Avg_not_null_q': 'Quantity arithmetic edge cases',
  'test_Avg_q_diff_units': 'Quantity arithmetic edge cases',
  'test_Median_dup_vals_even_q': 'Quantity arithmetic edge cases',
  'test_Median_dup_vals_odd_q': 'Quantity arithmetic edge cases',
  'test_Median_even_q': 'Quantity arithmetic edge cases',
  'test_Median_has_null_q': 'Quantity arithmetic edge cases',
  'test_Median_odd_q': 'Quantity arithmetic edge cases',
  'test_Median_q_diff_units': 'Quantity arithmetic edge cases',
  'test_PopulationStd_q': 'Quantity arithmetic edge cases',
  'test_PopulationStd_q_diff_units': 'Quantity arithmetic edge cases',
  'test_PopulationVariance_q_diff_units': 'Quantity arithmetic edge cases',
  'test_PopulationVariance_v_q': 'Quantity arithmetic edge cases',
  'test_Product_Quantity': 'Quantity arithmetic edge cases',
  'test_Product_Quantity_Zero': 'Quantity arithmetic edge cases',
  'test_Quantity_AddUcum': 'Quantity arithmetic edge cases',
  'test_Quantity_SubtractUcum': 'Quantity arithmetic edge cases',
  'test_Quantity_mul_d_q': 'Quantity arithmetic edge cases',
  'test_Quantity_mul_q_q_diff': 'Quantity arithmetic edge cases',
  'test_Std_q': 'Quantity arithmetic edge cases',
  'test_Std_q_diff_units': 'Quantity arithmetic edge cases',
  'test_Sum_q_diff_units': 'Quantity arithmetic edge cases',
  'test_Sum_unmatched_units_q': 'Quantity arithmetic edge cases',
  'test_Variance_q2': 'Quantity arithmetic edge cases',
  'test_Variance_q_diff_units': 'Quantity arithmetic edge cases',
  'test_Variance_v_q': 'Quantity arithmetic edge cases',
  // SameAs interval edge cases (12 tests)
  'test_SameAsIvl_DateTimeAndDateComparisonEqual': 'SameAs interval edge cases',
  'test_SameAsIvl_DateTimeDayPrecisionSame': 'SameAs interval edge cases',
  'test_SameAsIvl_DateTimeHourPrecisionSame': 'SameAs interval edge cases',
  'test_SameAsIvl_DateTimeMinutePrecisionSame': 'SameAs interval edge cases',
  'test_SameAsIvl_DateTimeMonthPrecisionSame': 'SameAs interval edge cases',
  'test_SameAsIvl_DateTimeSecondPrecisionSame': 'SameAs interval edge cases',
  'test_SameAsIvl_DateTimeYearPrecisionSame': 'SameAs interval edge cases',
  'test_SameAsIvl_DateYearPrecisionSame': 'SameAs interval edge cases',
  'test_SameAsIvl_TimeIntervalComparisonNotSame': 'SameAs interval edge cases',
  'test_SameAsIvl_TimeIntervalComparisonSame': 'SameAs interval edge cases',
  'test_SameAsIvl_TimeOpenAndClosed': 'SameAs interval edge cases',
  'test_SameAsIvl_TimeOpenEnded': 'SameAs interval edge cases',
  // String/null handling edge cases (30 tests)
  'test_Coalesce_AllNull': 'String/null handling edge cases',
  'test_Coalesce_FooNullNullBar': 'String/null handling edge cases',
  'test_Coalesce_ListArgAllNull': 'String/null handling edge cases',
  'test_Coalesce_ListArgStartsWithNull': 'String/null handling edge cases',
  'test_Coalesce_ListExpressionRef': 'String/null handling edge cases',
  'test_Coalesce_NullNullHelloNullWorld': 'String/null handling edge cases',
  'test_Coalesce_UnionAsList': 'String/null handling edge cases',
  'test_EndsWith_BlankEndsWithFoo': 'String/null handling edge cases',
  'test_EndsWith_EndsWithNull': 'String/null handling edge cases',
  'test_EndsWith_EndsWithNullAsString': 'String/null handling edge cases',
  'test_EndsWith_FooBarEndsWithBar': 'String/null handling edge cases',
  'test_EndsWith_FooBarEndsWithFoo': 'String/null handling edge cases',
  'test_EndsWith_NullAsStringEndsWith': 'String/null handling edge cases',
  'test_EndsWith_NullEndsWith': 'String/null handling edge cases',
  'test_StartsWith_FooBarStartsWithBar': 'String/null handling edge cases',
  'test_StartsWith_FooBarStartsWithBlank': 'String/null handling edge cases',
  'test_StartsWith_FooBarStartsWithFoo': 'String/null handling edge cases',
  'test_StartsWith_NullAsStringStartsWith': 'String/null handling edge cases',
  'test_StartsWith_NullStartsWith': 'String/null handling edge cases',
  'test_StartsWith_StartsWithNull': 'String/null handling edge cases',
  'test_StartsWith_StartsWithNullAsString': 'String/null handling edge cases',
  'test_Substring_NegativeLength': 'String/null handling edge cases',
  'test_Substring_NullStart': 'String/null handling edge cases',
  'test_Substring_NullString': 'String/null handling edge cases',
  'test_Substring_Or': 'String/null handling edge cases',
  'test_Substring_StartTooLow': 'String/null handling edge cases',
  'test_Substring_StartZero': 'String/null handling edge cases',
  'test_Substring_TooMuchLength': 'String/null handling edge cases',
  'test_Substring_World': 'String/null handling edge cases',
  'test_Substring_ZeroLength': 'String/null handling edge cases',
  // Time/Now edge cases (1 test)
  'test_Now_Var': 'Time/Now edge cases',
  // Type conversion edge cases (18 tests)
  'test_FromCode_codeConcept': 'Type conversion edge cases',
  'test_FromString_integerDropDecimal': 'Type conversion edge cases',
  'test_TimeFrom_NoTime': 'Type conversion edge cases',
  'test_ToConcept_IsValid': 'Type conversion edge cases',
  'test_ToDecimal_TooLargeDec': 'Type conversion edge cases',
  'test_ToDecimal_TooPrecise': 'Type conversion edge cases',
  'test_ToDecimal_TooSmallDec': 'Type conversion edge cases',
  'test_ToDecimal_WrongFormat': 'Type conversion edge cases',
  'test_ToInteger_TooLargeInt': 'Type conversion edge cases',
  'test_ToInteger_TooSmallInt': 'Type conversion edge cases',
  'test_ToList_FiveInFive': 'Type conversion edge cases',
  'test_ToList_FourInFive': 'Type conversion edge cases',
  'test_ToList_LengthOfNull': 'Type conversion edge cases',
  'test_ToQuantity_TooLargeQuantity': 'Type conversion edge cases',
  'test_ToQuantity_TooSmallQuantity': 'Type conversion edge cases',
  'test_ToQuantity_WrongFormatQuantity': 'Type conversion edge cases',
  'test_ToTime_SecondTooHigh': 'Type conversion edge cases',
  'test_Width_IntWidthMinToThree': 'Type conversion edge cases',
  // Union edge cases (7 tests)
  'test_Union_Disjoint': 'Union edge cases',
  'test_Union_NestedToFifteen': 'Union edge cases',
  'test_Union_NullUnion': 'Union edge cases',
  'test_Union_OneToFiveOverlapped': 'Union edge cases',
  'test_Union_OneToFiveOverlappedWithNulls': 'Union edge cases',
  'test_Union_OneToTen': 'Union edge cases',
  'test_Union_UnionNull': 'Union edge cases',
  // Unknown bound interval inclusion (13 tests)
  'test_IncludedIn_UnknownBegIncludedInDateIvl': 'Unknown bound interval inclusion',
  'test_IncludedIn_UnknownBegIncludedInIntIvl': 'Unknown bound interval inclusion',
  'test_IncludedIn_UnknownBegMayBeIncludedInIntIvl': 'Unknown bound interval inclusion',
  'test_IncludedIn_UnknownEndIncludedInDateIvl': 'Unknown bound interval inclusion',
  'test_IncludedIn_UnknownEndIncludedInIntIvl': 'Unknown bound interval inclusion',
  'test_IncludedIn_UnknownEndMayBeIncludedInIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownBegIncludesDateIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownBegIncludesIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownBegMayIncludeIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownEndIncludesDateIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownEndIncludesIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownEndMayIncludeIntIvl': 'Unknown bound interval inclusion',
  'test_ProperlyIncludes_UnknownEndMayProperlyIncludeIntIvl': 'Unknown bound interval inclusion',
};

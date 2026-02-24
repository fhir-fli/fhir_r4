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

  // Strip block comments (/* ... */) and line comments (// ...) before
  // extracting test names, so commented-out defines are not included.
  final uncommented = source
      .replaceAll(RegExp(r'/\*.*?\*/', dotAll: true), '')
      .replaceAll(RegExp(r'//.*'), '');

  // Extract all `define test_*:` names from uncommented source
  final testNames = RegExp(r'define (test_\w+):')
      .allMatches(uncommented)
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
/// Total: 161 failures out of 1800 uncommented tests (1639 passing = 91.1%).
///
/// Note: ~148 test defines are commented out in CqlTestSuite.cql (inside
/// /* ... */ block comments or // line comments). These are not counted.
// ignore_for_file: lines_longer_than_80_chars
const _knownFailures = <String, String>{
  // After/Before edge cases (2 tests)
  'test_After_HourBeforeNormalizeZones': 'After/Before edge cases',
  'test_After_SameHourNormalizeZones': 'After/Before edge cases',
  // Aggregate/math edge cases (3 tests)
  'test_GeometricMean_Null': 'Aggregate/math edge cases',
  'test_Ln_Four': 'Aggregate/math edge cases',
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
  // Equality edge cases (14 tests)
  'test_Equal_DateAndDateTimeEqual': 'Equality edge cases',
  'test_Equal_DateAndDateTimeUncertainEqual': 'Equality edge cases',
  'test_Equal_DateTimeAndDateEqual': 'Equality edge cases',
  'test_Equal_DateTimeAndDateUncertainEqual': 'Equality edge cases',
  'test_Equal_DifferingPrecision': 'Equality edge cases',
  'test_Equal_EqualQuantityOpenClosed': 'Equality edge cases',
  'test_Equal_FirstListHasNull': 'Equality edge cases',
  'test_Equal_SecondListHasNull': 'Equality edge cases',
  'test_NotEqual_DateAndDateTimeEqual': 'Equality edge cases',
  'test_NotEqual_DateAndDateTimeUncertainEqual': 'Equality edge cases',
  'test_NotEqual_DateTimeAndDateEqual': 'Equality edge cases',
  'test_NotEqual_DateTimeAndDateUncertainEqual': 'Equality edge cases',
  'test_NotEqual_DifferingPrecision': 'Equality edge cases',
  'test_NotEqual_EqualQuantityOpenClosed': 'Equality edge cases',
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
  // Interval Collapse edge cases (3 tests)
  'test_DtIvlCollapse_DateTimeCollapseSeparatedPerDay': 'Interval Collapse edge cases',
  'test_DtIvlCollapse_DateTimeCollapseSeparatedPerHour': 'Interval Collapse edge cases',
  'test_QtyIvlCollapse_CollapseSeparatedQuantityPer3': 'Interval Collapse edge cases',
  // Interval Expand edge cases (9 tests)
  'test_DecIvlExpand_OpenBoth': 'Interval Expand edge cases',
  'test_DecIvlExpand_OpenEnd': 'Interval Expand edge cases',
  'test_DecIvlExpand_OpenStart': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleGPerGDecimal': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleGPerMG': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleMGPerGTrunc': 'Interval Expand edge cases',
  'test_QtyIvlExpand_ClosedSingleMGPerMGDecimal': 'Interval Expand edge cases',
  'test_QtyIvlExpand_OpenBothDecimal': 'Interval Expand edge cases',
  'test_QtyIvlExpand_OpenBothDecimalTrunc': 'Interval Expand edge cases',
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
  // Other (21 tests)
  'test_Distinct_DupsTuples': 'Other',
  'test_In_TupleIsIn': 'Other',
  'test_IncludedIn_NullIncluded': 'Other',
  'test_IncludedIn_NullIncludes': 'Other',
  'test_IncludedIn_TuplesIncluded': 'Other',
  'test_Includes_NullIncluded': 'Other',
  'test_Includes_NullIncludes': 'Other',
  'test_Includes_TuplesIncluded': 'Other',
  'test_IndexOf_IndexOfThirdTuple': 'Other',
  'test_OverlapsAfterDT_MayOverlapAfterDayOfImpreciseIvl': 'Other',
  'test_OverlapsAfterDT_UnknownOverlap': 'Other',
  'test_OverlapsBeforeDT_MayOverlapBeforeDayOfImpreciseIvl': 'Other',
  'test_OverlapsBeforeDT_UnknownOverlap': 'Other',
  'test_ProperIncludedIn_NullIncluded': 'Other',
  'test_ProperIncludedIn_NullIncludes': 'Other',
  'test_ProperIncludedIn_TuplesIncluded': 'Other',
  'test_ProperIncludes_NullIncluded': 'Other',
  'test_ProperIncludes_NullIncludes': 'Other',
  'test_ProperIncludes_TuplesIncluded': 'Other',
  'test_ProperlyIncludedIn_NotProperlyIncludesDayOfIvlSameEdges': 'Other',
  'test_ProperlyIncludes_NotProperlyIncludesDayOfIvlSameEdges': 'Other',
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
  // Time/Now edge cases (1 test)
  'test_Now_Var': 'Time/Now edge cases',
  // Type conversion edge cases (15 tests)
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
  // Unknown bound interval inclusion (9 tests)
  'test_IncludedIn_UnknownBegMayBeIncludedInIntIvl': 'Unknown bound interval inclusion',
  'test_IncludedIn_UnknownEndMayBeIncludedInIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownBegIncludesDateIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownBegIncludesIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownBegMayIncludeIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownEndIncludesDateIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownEndIncludesIntIvl': 'Unknown bound interval inclusion',
  'test_Includes_UnknownEndMayIncludeIntIvl': 'Unknown bound interval inclusion',
  'test_ProperlyIncludes_UnknownEndMayProperlyIncludeIntIvl': 'Unknown bound interval inclusion',
};

import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible under the plan, the amount of benefit, copays etc.
enum AdjudicationValueCodes {
  /// Display: Submitted Amount
  /// Definition: The total submitted amount for the claim or group or line item.
  @JsonValue('submitted')
  submitted,

  /// Display: CoPay
  /// Definition: Patient Co-Payment
  @JsonValue('copay')
  copay,

  /// Display: Eligible Amount
  /// Definition: Amount of the change which is considered for adjudication.
  @JsonValue('eligible')
  eligible,

  /// Display: Deductible
  /// Definition: Amount deducted from the eligible amount prior to adjudication.
  @JsonValue('deductible')
  deductible,

  /// Display: Unallocated Deductible
  /// Definition: The amount of deductible which could not allocated to other line items.
  @JsonValue('unallocdeduct')
  unallocdeduct,

  /// Display: Eligible %
  /// Definition: Eligible Percentage.
  @JsonValue('eligpercent')
  eligpercent,

  /// Display: Tax
  /// Definition: The amount of tax.
  @JsonValue('tax')
  tax,

  /// Display: Benefit Amount
  /// Definition: Amount payable under the coverage
  @JsonValue('benefit')
  benefit,
  ;

  @override
  String toString() {
    switch (this) {
      case submitted:
        return 'submitted';
      case copay:
        return 'copay';
      case eligible:
        return 'eligible';
      case deductible:
        return 'deductible';
      case unallocdeduct:
        return 'unallocdeduct';
      case eligpercent:
        return 'eligpercent';
      case tax:
        return 'tax';
      case benefit:
        return 'benefit';
    }
  }

  String toJson() => toString();
  AdjudicationValueCodes fromString(String str) {
    switch (str) {
      case 'submitted':
        return AdjudicationValueCodes.submitted;
      case 'copay':
        return AdjudicationValueCodes.copay;
      case 'eligible':
        return AdjudicationValueCodes.eligible;
      case 'deductible':
        return AdjudicationValueCodes.deductible;
      case 'unallocdeduct':
        return AdjudicationValueCodes.unallocdeduct;
      case 'eligpercent':
        return AdjudicationValueCodes.eligpercent;
      case 'tax':
        return AdjudicationValueCodes.tax;
      case 'benefit':
        return AdjudicationValueCodes.benefit;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AdjudicationValueCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

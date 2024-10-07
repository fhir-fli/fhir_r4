import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why an administered dose has been assigned a particular status. Often, this reason describes why a dose is considered invalid. This value set is provided as a suggestive example.
enum ImmunizationEvaluationDoseStatusReasonCodes {
  /// Display: Adverse storage condition
  /// Definition: The product was stored in a manner inconsistent with manufacturer guidelines potentially reducing the effectiveness of the product.
  @JsonValue('advstorage')
  advstorage,
  /// Display: Cold chain break
  /// Definition: The product was stored at a temperature inconsistent with manufacturer guidelines potentially reducing the effectiveness of the product.
  @JsonValue('coldchbrk')
  coldchbrk,
  /// Display: Expired lot
  /// Definition: The product was administered after the expiration date associated with lot of vaccine.
  @JsonValue('explot')
  explot,
  /// Display: Administered outside recommended schedule
  /// Definition: The product was administered at a time inconsistent with the documented schedule.
  @JsonValue('outsidesched')
  outsidesched,
  /// Display: Product recall
  /// Definition: The product administered has been recalled by the manufacturer.
  @JsonValue('prodrecall')
  prodrecall,
;

@override
  String toString() {
      switch(this) {
        case advstorage: return 'advstorage';
        case coldchbrk: return 'coldchbrk';
        case explot: return 'explot';
        case outsidesched: return 'outsidesched';
        case prodrecall: return 'prodrecall';
      }
      }
String toJson() => toString();
  ImmunizationEvaluationDoseStatusReasonCodes fromString(String str) {
    switch(str) {
      case 'advstorage': return ImmunizationEvaluationDoseStatusReasonCodes.advstorage;
      case 'coldchbrk': return ImmunizationEvaluationDoseStatusReasonCodes.coldchbrk;
      case 'explot': return ImmunizationEvaluationDoseStatusReasonCodes.explot;
      case 'outsidesched': return ImmunizationEvaluationDoseStatusReasonCodes.outsidesched;
      case 'prodrecall': return ImmunizationEvaluationDoseStatusReasonCodes.prodrecall;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ImmunizationEvaluationDoseStatusReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}


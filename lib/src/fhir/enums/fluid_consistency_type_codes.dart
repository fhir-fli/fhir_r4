import 'package:fhir_r4/fhir_r4.dart';

/// FluidConsistencyType : Codes used to represent the consistency of fluids and liquids provided to the patient. This value set includes concepts from [SNOMED CT](http://snomed.info/sct)(US Extension) where concept is a 435681000124103 (Dietary liquid consistency diet (regime/therapy)). It is provided as a suggestive example.
enum FluidConsistencyTypeCodes {
  /// Display: honey thick liquid
  /// Definition:
  value439031000124108('439031000124108'),

  /// Display: nectar thick liquid
  /// Definition:
  value439021000124105('439021000124105'),

  /// Display: spoon thick liquid
  /// Definition:
  value439041000124103('439041000124103'),

  /// Display: thin liquid
  /// Definition:
  value439081000124109('439081000124109'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FluidConsistencyTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FluidConsistencyTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FluidConsistencyTypeCodes.elementOnly.withElement(element);
    }
    return FluidConsistencyTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FluidConsistencyTypeCodes withElement(Element? newElement) {
    return FluidConsistencyTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of USCLS codes.
enum USCLSCodes {
  /// Display: Exam, comp, primary
  /// Definition: Exam, comp, primary
  value1101('1101'),

  /// Display: Exam, comp, mixed
  /// Definition: Exam, comp, mixed
  value1102('1102'),

  /// Display: Exam, comp, permanent
  /// Definition: Exam, comp, permanent
  value1103('1103'),

  /// Display: Exam, recall
  /// Definition: Exam, recall
  value1201('1201'),

  /// Display: Exam, emergency
  /// Definition: Exam, emergency
  value1205('1205'),

  /// Display: Radiograph, series (12)
  /// Definition: Radiograph, series (12)
  value2101('2101'),

  /// Display: Radiograph, series (16)
  /// Definition: Radiograph, series (16)
  value2102('2102'),

  /// Display: Radiograph, bitewing
  /// Definition: Radiograph, bitewing
  value2141('2141'),

  /// Display: Radiograph, panoramic
  /// Definition: Radiograph, panoramic
  value2601('2601'),

  /// Display: Polishing, 1 unit
  /// Definition: Polishing, 1 unit
  value11101('11101'),

  /// Display: Polishing, 2 unit
  /// Definition: Polishing, 2 unit
  value11102('11102'),

  /// Display: Polishing, 3 unit
  /// Definition: Polishing, 3 unit
  value11103('11103'),

  /// Display: Polishing, 4 unit
  /// Definition: Polishing, 4 unit
  value11104('11104'),

  /// Display: Amalgam, 1 surface
  /// Definition: Amalgam, 1 surface
  value21211('21211'),

  /// Display: Amalgam, 2 surface
  /// Definition: Amalgam, 2 surface
  value21212('21212'),

  /// Display: Crown, PFM
  /// Definition: Crown, PFM
  value27211('27211'),

  /// Display: Maryland Bridge
  /// Definition: Maryland Bridge
  value67211('67211'),

  /// Display: Lab, commercial
  /// Definition: Lab, commercial
  value99111('99111'),

  /// Display: Lab, in office
  /// Definition: Lab, in office
  value99333('99333'),

  /// Display: Expense
  /// Definition: Expense
  value99555('99555'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const USCLSCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static USCLSCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return USCLSCodes.elementOnly.withElement(element);
    }
    return USCLSCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  USCLSCodes withElement(Element? newElement) {
    return USCLSCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

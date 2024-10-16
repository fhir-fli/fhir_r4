import 'package:fhir_r4/fhir_r4.dart';

/// TODO (and should this be required?).
enum AdverseEventOutcome {
  /// Display: Resolved
  /// Definition:
  resolved('resolved'),

  /// Display: Recovering
  /// Definition:
  recovering('recovering'),

  /// Display: Ongoing
  /// Definition:
  ongoing('ongoing'),

  /// Display: Resolved with Sequelae
  /// Definition:
  resolvedWithSequelae('resolvedWithSequelae'),

  /// Display: Fatal
  /// Definition:
  fatal('fatal'),

  /// Display: Unknown
  /// Definition:
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdverseEventOutcome(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdverseEventOutcome fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventOutcome.elementOnly.withElement(element);
    }
    return AdverseEventOutcome.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdverseEventOutcome withElement(Element? newElement) {
    return AdverseEventOutcome.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

import 'package:fhir_r4/fhir_r4.dart';

/// The workflow/clinical status of the composition.
enum CompositionStatus {
  /// Display: Preliminary
  /// Definition: This is a preliminary composition or document (also known as initial or interim). The content may be incomplete or unverified.
  preliminary('preliminary'),

  /// Display: Final
  /// Definition: This version of the composition is complete and verified by an appropriate person and no further work is planned. Any subsequent updates would be on a new version of the composition.
  final_('final'),

  /// Display: Amended
  /// Definition: The composition content or the referenced resources have been modified (edited or added to) subsequent to being released as "final" and the composition is complete and verified by an authorized person.
  amended('amended'),

  /// Display: Entered in Error
  /// Definition: The composition or document was originally created/issued in error, and this is an amendment that marks that the entire series should not be considered as valid.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CompositionStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CompositionStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatus.elementOnly.withElement(element);
    }
    return CompositionStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CompositionStatus withElement(Element? newElement) {
    return CompositionStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

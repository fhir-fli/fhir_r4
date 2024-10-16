import 'package:fhir_r4/fhir_r4.dart';

/// How slices are interpreted when evaluating an instance.
enum SlicingRules {
  /// Display: Closed
  /// Definition: No additional content is allowed other than that described by the slices in this profile.
  closed('closed'),

  /// Display: Open
  /// Definition: Additional content is allowed anywhere in the list.
  open('open'),

  /// Display: Open at End
  /// Definition: Additional content is allowed, but only at the end of the list. Note that using this requires that the slices be ordered, which makes it hard to share uses. This should only be done where absolutely required.
  openAtEnd('openAtEnd'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SlicingRules(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SlicingRules fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRules.elementOnly.withElement(element);
    }
    return SlicingRules.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SlicingRules withElement(Element? newElement) {
    return SlicingRules.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept listing the eye codes.
enum VisionEyes {
  /// Display: Right Eye
  /// Definition: Right Eye.
  right('right'),

  /// Display: Left Eye
  /// Definition: Left Eye.
  left('left'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const VisionEyes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static VisionEyes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionEyes.elementOnly.withElement(element);
    }
    return VisionEyes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  VisionEyes withElement(Element? newElement) {
    return VisionEyes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

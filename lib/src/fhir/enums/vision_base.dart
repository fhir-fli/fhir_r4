import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept listing the base codes.
enum VisionBase {
  /// Display: Up
  /// Definition: top.
  up('up'),

  /// Display: Down
  /// Definition: bottom.
  down('down'),

  /// Display: In
  /// Definition: inner edge.
  in_('in'),

  /// Display: Out
  /// Definition: outer edge.
  out('out'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const VisionBase(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static VisionBase fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase.elementOnly.withElement(element);
    }
    return VisionBase.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  VisionBase withElement(Element? newElement) {
    return VisionBase.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

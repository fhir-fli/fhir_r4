import 'package:fhir_r4/fhir_r4.dart';

/// Used to distinguish different roles a resource can play within a set of linked resources.
enum LinkageType {
  /// Display: Source of Truth
  /// Definition: The resource represents the "source of truth" (from the perspective of this Linkage resource) for the underlying event/condition/etc.
  source('source'),

  /// Display: Alternate Record
  /// Definition: The resource represents an alternative view of the underlying event/condition/etc. The resource may still be actively maintained, even though it is not considered to be the source of truth.
  alternate('alternate'),

  /// Display: Historical/Obsolete Record
  /// Definition: The resource represents an obsolete record of the underlying event/condition/etc. It is not expected to be actively maintained.
  historical('historical'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const LinkageType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static LinkageType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageType.elementOnly.withElement(element);
    }
    return LinkageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  LinkageType withElement(Element? newElement) {
    return LinkageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

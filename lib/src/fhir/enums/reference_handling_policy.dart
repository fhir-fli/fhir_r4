import 'package:fhir_r4/fhir_r4.dart';

/// A set of flags that defines how references are supported.
enum ReferenceHandlingPolicy {
  /// Display: Literal References
  /// Definition: The server supports and populates Literal references (i.e. using Reference.reference) where they are known (this code does not guarantee that all references are literal; see 'enforced').
  literal('literal'),

  /// Display: Logical References
  /// Definition: The server allows logical references (i.e. using Reference.identifier).
  logical('logical'),

  /// Display: Resolves References
  /// Definition: The server will attempt to resolve logical references to literal references - i.e. converting Reference.identifier to Reference.reference (if resolution fails, the server may still accept resources; see logical).
  resolves('resolves'),

  /// Display: Reference Integrity Enforced
  /// Definition: The server enforces that references have integrity - e.g. it ensures that references can always be resolved. This is typically the case for clinical record systems, but often not the case for middleware/proxy systems.
  enforced('enforced'),

  /// Display: Local References Only
  /// Definition: The server does not support references that point to other servers.
  local('local'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ReferenceHandlingPolicy(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ReferenceHandlingPolicy fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceHandlingPolicy.elementOnly.withElement(element);
    }
    return ReferenceHandlingPolicy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ReferenceHandlingPolicy withElement(Element? newElement) {
    return ReferenceHandlingPolicy.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

import 'package:fhir_r4/fhir_r4.dart';

/// How an extension context is interpreted.
enum ExtensionContextType {
  /// Display: FHIRPath
  /// Definition: The context is all elements that match the FHIRPath query found in the expression.
  fhirpath('fhirpath'),

  /// Display: Element ID
  /// Definition: The context is any element that has an ElementDefinition.id that matches that found in the expression. This includes ElementDefinition Ids that have slicing identifiers. The full path for the element is [url]#[elementid]. If there is no #, the Element id is one defined in the base specification.
  element_('element'),

  /// Display: Extension URL
  /// Definition: The context is a particular extension from a particular StructureDefinition, and the expression is just a uri that identifies the extension.
  extension_('extension'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExtensionContextType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExtensionContextType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextType.elementOnly.withElement(element);
    }
    return ExtensionContextType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

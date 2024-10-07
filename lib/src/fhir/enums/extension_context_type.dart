import 'package:json_annotation/json_annotation.dart';

/// How an extension context is interpreted.
enum ExtensionContextType {
  /// Display: FHIRPath
  /// Definition: The context is all elements that match the FHIRPath query found in the expression.
  @JsonValue('fhirpath')
  fhirpath,
  /// Display: Element ID
  /// Definition: The context is any element that has an ElementDefinition.id that matches that found in the expression. This includes ElementDefinition Ids that have slicing identifiers. The full path for the element is [url]#[elementid]. If there is no #, the Element id is one defined in the base specification.
  @JsonValue('element')
  element,
  /// Display: Extension URL
  /// Definition: The context is a particular extension from a particular StructureDefinition, and the expression is just a uri that identifies the extension.
  @JsonValue('extension')
  extension_,
;

@override
  String toString() {
      switch(this) {
        case fhirpath: return 'fhirpath';
        case element: return 'element';
        case extension_: return 'extension';
      }
      }
String toJson() => toString();
  ExtensionContextType fromString(String str) {
    switch(str) {
      case 'fhirpath': return ExtensionContextType.fhirpath;
      case 'element': return ExtensionContextType.element;
      case 'extension': return ExtensionContextType.extension_;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExtensionContextType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}


import 'package:json_annotation/json_annotation.dart';

/// How a property is represented when serialized.
enum PropertyRepresentation {
  /// Display: XML Attribute
  /// Definition: In XML, this property is represented as an attribute not an element.
  @JsonValue('xmlAttr')
  xmlAttr,
  /// Display: XML Text
  /// Definition: This element is represented using the XML text attribute (primitives only).
  @JsonValue('xmlText')
  xmlText,
  /// Display: Type Attribute
  /// Definition: The type of this element is indicated using xsi:type.
  @JsonValue('typeAttr')
  typeAttr,
  /// Display: CDA Text Format
  /// Definition: Use CDA narrative instead of XHTML.
  @JsonValue('cdaText')
  cdaText,
  /// Display: XHTML
  /// Definition: The property is represented using XHTML.
  @JsonValue('xhtml')
  xhtml,
;

@override
  String toString() {
      switch(this) {
        case xmlAttr: return 'xmlAttr';
        case xmlText: return 'xmlText';
        case typeAttr: return 'typeAttr';
        case cdaText: return 'cdaText';
        case xhtml: return 'xhtml';
      }
      }
String toJson() => toString();
  PropertyRepresentation fromString(String str) {
    switch(str) {
      case 'xmlAttr': return PropertyRepresentation.xmlAttr;
      case 'xmlText': return PropertyRepresentation.xmlText;
      case 'typeAttr': return PropertyRepresentation.typeAttr;
      case 'cdaText': return PropertyRepresentation.cdaText;
      case 'xhtml': return PropertyRepresentation.xhtml;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 PropertyRepresentation fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}


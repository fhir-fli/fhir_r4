// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.
@Entity()
class MediaModality extends FhirCode {
  /// Factory constructor to create [MediaModality] from JSON.
  factory MediaModality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaModality.elementOnly(element);
    }
    if (values.contains(value)) {
      return MediaModality._(value, element);
    }
    throw ArgumentError(
      'MediaModality.fromJson: JSON value is not a valid value',
    );
  }

  /// diagram
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.diagram([this.element])
      : dbValue = 'diagram',
        super('diagram', element);

  /// fax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.fax([this.element])
      : dbValue = 'fax',
        super('fax', element);

  /// scan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.scan([this.element])
      : dbValue = 'scan',
        super('scan', element);

  /// retina
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.retina([this.element])
      : dbValue = 'retina',
        super('retina', element);

  /// fingerprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.fingerprint([this.element])
      : dbValue = 'fingerprint',
        super('fingerprint', element);

  /// iris
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.iris([this.element])
      : dbValue = 'iris',
        super('iris', element);

  /// palm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.palm([this.element])
      : dbValue = 'palm',
        super('palm', element);

  /// face
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaModality.face([this.element])
      : dbValue = 'face',
        super('face', element);

  /// For instances where an Element is present but not value

  MediaModality.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MediaModality._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'diagram',
    'fax',
    'scan',
    'retina',
    'fingerprint',
    'iris',
    'palm',
    'face',
  ];

  /// Returns the enum value with an element attached
  MediaModality withElement(Element? newElement) {
    return MediaModality._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MediaModality.$value';
}

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for high level media categories.
@Entity()
class MediaType extends FhirCode {
  /// Factory constructor to create [MediaType] from JSON.
  factory MediaType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaType.elementOnly(element);
    }
    if (values.contains(value)) {
      return MediaType._(value, element);
    }
    throw ArgumentError(
      'MediaType.fromJson: JSON value is not a valid value',
    );
  }

  /// image
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaType.image([this.element])
      : dbValue = 'image',
        super('image', element);

  /// video
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaType.video([this.element])
      : dbValue = 'video',
        super('video', element);

  /// audio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MediaType.audio([this.element])
      : dbValue = 'audio',
        super('audio', element);

  /// For instances where an Element is present but not value

  MediaType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MediaType._(super.input, [super.element])
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
    'image',
    'video',
    'audio',
  ];

  /// Returns the enum value with an element attached
  MediaType withElement(Element? newElement) {
    return MediaType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MediaType.$value';
}

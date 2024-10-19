// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.
class MediaModality {
  // Private constructor for internal use (like enum)
  MediaModality._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MediaModality values
  /// diagram
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality diagram = MediaModality._(
    'diagram',
  );

  /// fax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality fax = MediaModality._(
    'fax',
  );

  /// scan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality scan = MediaModality._(
    'scan',
  );

  /// retina
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality retina = MediaModality._(
    'retina',
  );

  /// fingerprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality fingerprint = MediaModality._(
    'fingerprint',
  );

  /// iris
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality iris = MediaModality._(
    'iris',
  );

  /// palm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality palm = MediaModality._(
    'palm',
  );

  /// face
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaModality face = MediaModality._(
    'face',
  );

  /// For instances where an Element is present but not value

  static final MediaModality elementOnly = MediaModality._('');

  /// List of all enum-like values
  static final List<MediaModality> values = [
    diagram,
    fax,
    scan,
    retina,
    fingerprint,
    iris,
    palm,
    face,
  ];

  /// Returns the enum value with an element attached
  MediaModality withElement(Element? newElement) {
    return MediaModality._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MediaModality] from JSON.
  static MediaModality fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaModality.elementOnly.withElement(element);
    }
    return MediaModality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MediaModality.$fhirCode';
}

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Used to code the format of the display string.
@Entity()
class ContributorRole extends FhirCode {
  /// Factory constructor to create [ContributorRole] from JSON.
  factory ContributorRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorRole.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContributorRole._(value, element);
    }
    throw ArgumentError(
      'ContributorRole.fromJson: JSON value is not a valid value',
    );
  }

  /// publisher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorRole.publisher([this.element])
      : dbValue = 'publisher',
        super('publisher', element);

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorRole.author([this.element])
      : dbValue = 'author',
        super('author', element);

  /// reviewer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorRole.reviewer([this.element])
      : dbValue = 'reviewer',
        super('reviewer', element);

  /// endorser
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorRole.endorser([this.element])
      : dbValue = 'endorser',
        super('endorser', element);

  /// editor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorRole.editor([this.element])
      : dbValue = 'editor',
        super('editor', element);

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorRole.informant([this.element])
      : dbValue = 'informant',
        super('informant', element);

  /// funder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorRole.funder([this.element])
      : dbValue = 'funder',
        super('funder', element);

  /// For instances where an Element is present but not value

  ContributorRole.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContributorRole._(super.input, [super.element])
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
    'publisher',
    'author',
    'reviewer',
    'endorser',
    'editor',
    'informant',
    'funder',
  ];

  /// Returns the enum value with an element attached
  ContributorRole withElement(Element? newElement) {
    return ContributorRole._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorRole.$value';
}

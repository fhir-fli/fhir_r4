// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of contributor.
@Entity()
class ContributorType extends FhirCode {
  /// Factory constructor to create [ContributorType] from JSON.
  factory ContributorType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContributorType._(value, element);
    }
    throw ArgumentError(
      'ContributorType.fromJson: JSON value is not a valid value',
    );
  }

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorType.author([this.element])
      : dbValue = 'author',
        super('author', element);

  /// editor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorType.editor([this.element])
      : dbValue = 'editor',
        super('editor', element);

  /// reviewer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorType.reviewer([this.element])
      : dbValue = 'reviewer',
        super('reviewer', element);

  /// endorser
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorType.endorser([this.element])
      : dbValue = 'endorser',
        super('endorser', element);

  /// For instances where an Element is present but not value

  ContributorType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContributorType._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'author',
    'editor',
    'reviewer',
    'endorser',
  ];

  /// Returns the enum value with an element attached
  ContributorType withElement(Element? newElement) {
    return ContributorType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorType.$value';
}

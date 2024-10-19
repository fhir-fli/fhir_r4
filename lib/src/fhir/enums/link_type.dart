// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of link between this patient resource and another patient resource.
@Entity()
class LinkType extends FhirCode {
  /// Factory constructor to create [LinkType] from JSON.
  factory LinkType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkType.elementOnly(element);
    }
    if (values.contains(value)) {
      return LinkType._(value, element);
    }
    throw ArgumentError(
      'LinkType.fromJson: JSON value is not a valid value',
    );
  }

  /// replaced_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LinkType.replaced_by([this.element])
      : dbValue = 'replaced-by',
        super('replaced-by', element);

  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LinkType.replaces([this.element])
      : dbValue = 'replaces',
        super('replaces', element);

  /// refer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LinkType.refer([this.element])
      : dbValue = 'refer',
        super('refer', element);

  /// seealso
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LinkType.seealso([this.element])
      : dbValue = 'seealso',
        super('seealso', element);

  /// For instances where an Element is present but not value

  LinkType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  LinkType._(super.input, [super.element])
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
    'replaced-by',
    'replaces',
    'refer',
    'seealso',
  ];

  /// Returns the enum value with an element attached
  LinkType withElement(Element? newElement) {
    return LinkType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LinkType.$value';
}

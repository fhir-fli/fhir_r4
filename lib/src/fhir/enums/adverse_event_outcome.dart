// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// TODO (and should this be required?).
@Entity()
class AdverseEventOutcome extends FhirCode {
  /// Factory constructor to create [AdverseEventOutcome] from JSON.
  factory AdverseEventOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventOutcome.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdverseEventOutcome._(value, element);
    }
    throw ArgumentError(
      'AdverseEventOutcome.fromJson: JSON value is not a valid value',
    );
  }

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventOutcome.resolved([this.element])
      : dbValue = 'resolved',
        super('resolved', element);

  /// recovering
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventOutcome.recovering([this.element])
      : dbValue = 'recovering',
        super('recovering', element);

  /// ongoing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventOutcome.ongoing([this.element])
      : dbValue = 'ongoing',
        super('ongoing', element);

  /// resolvedWithSequelae
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventOutcome.resolvedWithSequelae([this.element])
      : dbValue = 'resolvedWithSequelae',
        super('resolvedWithSequelae', element);

  /// fatal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventOutcome.fatal([this.element])
      : dbValue = 'fatal',
        super('fatal', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventOutcome.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  AdverseEventOutcome.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdverseEventOutcome._(super.input, [super.element])
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
    'resolved',
    'recovering',
    'ongoing',
    'resolvedWithSequelae',
    'fatal',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  AdverseEventOutcome withElement(Element? newElement) {
    return AdverseEventOutcome._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventOutcome.$value';
}

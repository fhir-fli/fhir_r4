// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of the episode of care.
@Entity()
class EpisodeOfCareStatus extends FhirCode {
  /// Factory constructor to create [EpisodeOfCareStatus] from JSON.
  factory EpisodeOfCareStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return EpisodeOfCareStatus._(value, element);
    }
    throw ArgumentError(
      'EpisodeOfCareStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareStatus.planned([this.element])
      : dbValue = 'planned',
        super('planned', element);

  /// waitlist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareStatus.waitlist([this.element])
      : dbValue = 'waitlist',
        super('waitlist', element);

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// onhold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareStatus.onhold([this.element])
      : dbValue = 'onhold',
        super('onhold', element);

  /// finished
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareStatus.finished([this.element])
      : dbValue = 'finished',
        super('finished', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  EpisodeOfCareStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EpisodeOfCareStatus._(super.input, [super.element])
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
    'planned',
    'waitlist',
    'active',
    'onhold',
    'finished',
    'cancelled',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareStatus withElement(Element? newElement) {
    return EpisodeOfCareStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EpisodeOfCareStatus.$value';
}

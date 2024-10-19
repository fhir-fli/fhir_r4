// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of a guidance response.
@Entity()
class GuidanceResponseStatus extends FhirCode {
  /// Factory constructor to create [GuidanceResponseStatus] from JSON.
  factory GuidanceResponseStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return GuidanceResponseStatus._(value, element);
    }
    throw ArgumentError(
      'GuidanceResponseStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// success
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidanceResponseStatus.success([this.element])
      : dbValue = 'success',
        super('success', element);

  /// data_requested
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidanceResponseStatus.data_requested([this.element])
      : dbValue = 'data-requested',
        super('data-requested', element);

  /// data_required
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidanceResponseStatus.data_required([this.element])
      : dbValue = 'data-required',
        super('data-required', element);

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidanceResponseStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// failure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidanceResponseStatus.failure([this.element])
      : dbValue = 'failure',
        super('failure', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidanceResponseStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  GuidanceResponseStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GuidanceResponseStatus._(super.input, [super.element])
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
    'success',
    'data-requested',
    'data-required',
    'in-progress',
    'failure',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  GuidanceResponseStatus withElement(Element? newElement) {
    return GuidanceResponseStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GuidanceResponseStatus.$value';
}

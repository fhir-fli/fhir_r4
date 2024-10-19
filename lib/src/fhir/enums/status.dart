// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The validation status of the target
@Entity()
class Status extends FhirCode {
  /// Factory constructor to create [Status] from JSON.
  factory Status.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Status.elementOnly(element);
    }
    if (values.contains(value)) {
      return Status._(value, element);
    }
    throw ArgumentError(
      'Status.fromJson: JSON value is not a valid value',
    );
  }

  /// attested
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Status.attested([this.element])
      : dbValue = 'attested',
        super('attested', element);

  /// validated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Status.validated([this.element])
      : dbValue = 'validated',
        super('validated', element);

  /// in_process
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Status.in_process([this.element])
      : dbValue = 'in-process',
        super('in-process', element);

  /// req_revalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Status.req_revalid([this.element])
      : dbValue = 'req-revalid',
        super('req-revalid', element);

  /// val_fail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Status.val_fail([this.element])
      : dbValue = 'val-fail',
        super('val-fail', element);

  /// reval_fail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Status.reval_fail([this.element])
      : dbValue = 'reval-fail',
        super('reval-fail', element);

  /// For instances where an Element is present but not value

  Status.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  Status._(super.input, [super.element])
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
    'attested',
    'validated',
    'in-process',
    'req-revalid',
    'val-fail',
    'reval-fail',
  ];

  /// Returns the enum value with an element attached
  Status withElement(Element? newElement) {
    return Status._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'Status.$value';
}

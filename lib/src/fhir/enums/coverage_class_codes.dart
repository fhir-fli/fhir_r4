// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes Coverage Class codes.
@Entity()
class CoverageClassCodes extends FhirCode {
  /// Factory constructor to create [CoverageClassCodes] from JSON.
  factory CoverageClassCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageClassCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return CoverageClassCodes._(value, element);
    }
    throw ArgumentError(
      'CoverageClassCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.group([this.element])
      : dbValue = 'group',
        super('group', element);

  /// subgroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.subgroup([this.element])
      : dbValue = 'subgroup',
        super('subgroup', element);

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.plan([this.element])
      : dbValue = 'plan',
        super('plan', element);

  /// subplan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.subplan([this.element])
      : dbValue = 'subplan',
        super('subplan', element);

  /// class_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.class_([this.element])
      : dbValue = 'class',
        super('class', element);

  /// subclass
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.subclass([this.element])
      : dbValue = 'subclass',
        super('subclass', element);

  /// sequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.sequence([this.element])
      : dbValue = 'sequence',
        super('sequence', element);

  /// rxbin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.rxbin([this.element])
      : dbValue = 'rxbin',
        super('rxbin', element);

  /// rxpcn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.rxpcn([this.element])
      : dbValue = 'rxpcn',
        super('rxpcn', element);

  /// rxid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.rxid([this.element])
      : dbValue = 'rxid',
        super('rxid', element);

  /// rxgroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageClassCodes.rxgroup([this.element])
      : dbValue = 'rxgroup',
        super('rxgroup', element);

  /// For instances where an Element is present but not value

  CoverageClassCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CoverageClassCodes._(super.input, [super.element])
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
    'group',
    'subgroup',
    'plan',
    'subplan',
    'class',
    'subclass',
    'sequence',
    'rxbin',
    'rxpcn',
    'rxid',
    'rxgroup',
  ];

  /// Returns the enum value with an element attached
  CoverageClassCodes withElement(Element? newElement) {
    return CoverageClassCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CoverageClassCodes.$value';
}

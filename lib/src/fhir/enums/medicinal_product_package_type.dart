// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Types of medicinal product packs
@Entity()
class MedicinalProductPackageType extends FhirCode {
  /// Factory constructor to create [MedicinalProductPackageType] from JSON.
  factory MedicinalProductPackageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductPackageType.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicinalProductPackageType._(value, element);
    }
    throw ArgumentError(
      'MedicinalProductPackageType.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000073490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073490([this.element])
      : dbValue = '100000073490',
        super('100000073490', element);

  /// value100000073491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073491([this.element])
      : dbValue = '100000073491',
        super('100000073491', element);

  /// value100000073492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073492([this.element])
      : dbValue = '100000073492',
        super('100000073492', element);

  /// value100000073493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073493([this.element])
      : dbValue = '100000073493',
        super('100000073493', element);

  /// value100000073494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073494([this.element])
      : dbValue = '100000073494',
        super('100000073494', element);

  /// value100000073495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073495([this.element])
      : dbValue = '100000073495',
        super('100000073495', element);

  /// value100000073496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073496([this.element])
      : dbValue = '100000073496',
        super('100000073496', element);

  /// value100000073497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073497([this.element])
      : dbValue = '100000073497',
        super('100000073497', element);

  /// value100000073498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073498([this.element])
      : dbValue = '100000073498',
        super('100000073498', element);

  /// value100000073547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073547([this.element])
      : dbValue = '100000073547',
        super('100000073547', element);

  /// value100000073563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000073563([this.element])
      : dbValue = '100000073563',
        super('100000073563', element);

  /// value100000143555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductPackageType.value100000143555([this.element])
      : dbValue = '100000143555',
        super('100000143555', element);

  /// For instances where an Element is present but not value

  MedicinalProductPackageType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicinalProductPackageType._(super.input, [super.element])
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
    '100000073490',
    '100000073491',
    '100000073492',
    '100000073493',
    '100000073494',
    '100000073495',
    '100000073496',
    '100000073497',
    '100000073498',
    '100000073547',
    '100000073563',
    '100000143555',
  ];

  /// Returns the enum value with an element attached
  MedicinalProductPackageType withElement(Element? newElement) {
    return MedicinalProductPackageType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicinalProductPackageType.$value';
}

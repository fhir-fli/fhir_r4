// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// SNOMED-CT concepts modifying the anatomic location
@Entity()
class BodystructureLocationQualifier extends FhirCode {
  /// Factory constructor to create [BodystructureLocationQualifier] from JSON.
  factory BodystructureLocationQualifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BodystructureLocationQualifier.elementOnly(element);
    }
    if (values.contains(value)) {
      return BodystructureLocationQualifier._(value, element);
    }
    throw ArgumentError(
      'BodystructureLocationQualifier.fromJson: JSON value is not a valid value',
    );
  }

  /// value419161000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value419161000([this.element])
      : dbValue = '419161000',
        super('419161000', element);

  /// value419465000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value419465000([this.element])
      : dbValue = '419465000',
        super('419465000', element);

  /// value51440002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value51440002([this.element])
      : dbValue = '51440002',
        super('51440002', element);

  /// value261183002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value261183002([this.element])
      : dbValue = '261183002',
        super('261183002', element);

  /// value261122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value261122009([this.element])
      : dbValue = '261122009',
        super('261122009', element);

  /// value255561001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value255561001([this.element])
      : dbValue = '255561001',
        super('255561001', element);

  /// value49370004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value49370004([this.element])
      : dbValue = '49370004',
        super('49370004', element);

  /// value264217000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value264217000([this.element])
      : dbValue = '264217000',
        super('264217000', element);

  /// value261089000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value261089000([this.element])
      : dbValue = '261089000',
        super('261089000', element);

  /// value255551008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value255551008([this.element])
      : dbValue = '255551008',
        super('255551008', element);

  /// value351726001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value351726001([this.element])
      : dbValue = '351726001',
        super('351726001', element);

  /// value352730000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BodystructureLocationQualifier.value352730000([this.element])
      : dbValue = '352730000',
        super('352730000', element);

  /// For instances where an Element is present but not value

  BodystructureLocationQualifier.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BodystructureLocationQualifier._(super.input, [super.element])
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
    '419161000',
    '419465000',
    '51440002',
    '261183002',
    '261122009',
    '255561001',
    '49370004',
    '264217000',
    '261089000',
    '255551008',
    '351726001',
    '352730000',
  ];

  /// Returns the enum value with an element attached
  BodystructureLocationQualifier withElement(Element? newElement) {
    return BodystructureLocationQualifier._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BodystructureLocationQualifier.$value';
}

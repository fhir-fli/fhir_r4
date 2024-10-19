// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Overall seriousness of this event for the patient.
@Entity()
class AdverseEventSeriousness extends FhirCode {
  /// Factory constructor to create [AdverseEventSeriousness] from JSON.
  factory AdverseEventSeriousness.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeriousness.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdverseEventSeriousness._(value, element);
    }
    throw ArgumentError(
      'AdverseEventSeriousness.fromJson: JSON value is not a valid value',
    );
  }

  /// Non_serious
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.Non_serious([this.element])
      : dbValue = 'Non-serious',
        super('Non-serious', element);

  /// Serious
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.Serious([this.element])
      : dbValue = 'Serious',
        super('Serious', element);

  /// SeriousResultsInDeath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.SeriousResultsInDeath([this.element])
      : dbValue = 'SeriousResultsInDeath',
        super('SeriousResultsInDeath', element);

  /// SeriousIsLifeThreatening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.SeriousIsLifeThreatening([this.element])
      : dbValue = 'SeriousIsLifeThreatening',
        super('SeriousIsLifeThreatening', element);

  /// SeriousResultsInHospitalization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.SeriousResultsInHospitalization([this.element])
      : dbValue = 'SeriousResultsInHospitalization',
        super('SeriousResultsInHospitalization', element);

  /// SeriousResultsInDisability
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.SeriousResultsInDisability([this.element])
      : dbValue = 'SeriousResultsInDisability',
        super('SeriousResultsInDisability', element);

  /// SeriousIsBirthDefect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.SeriousIsBirthDefect([this.element])
      : dbValue = 'SeriousIsBirthDefect',
        super('SeriousIsBirthDefect', element);

  /// SeriousRequiresPreventImpairment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeriousness.SeriousRequiresPreventImpairment([this.element])
      : dbValue = 'SeriousRequiresPreventImpairment',
        super('SeriousRequiresPreventImpairment', element);

  /// For instances where an Element is present but not value

  AdverseEventSeriousness.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdverseEventSeriousness._(super.input, [super.element])
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
    'Non-serious',
    'Serious',
    'SeriousResultsInDeath',
    'SeriousIsLifeThreatening',
    'SeriousResultsInHospitalization',
    'SeriousResultsInDisability',
    'SeriousIsBirthDefect',
    'SeriousRequiresPreventImpairment',
  ];

  /// Returns the enum value with an element attached
  AdverseEventSeriousness withElement(Element? newElement) {
    return AdverseEventSeriousness._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventSeriousness.$value';
}

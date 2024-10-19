// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Claim Care Team Role codes.
@Entity()
class ClaimCareTeamRoleCodes extends FhirCode {
  /// Factory constructor to create [ClaimCareTeamRoleCodes] from JSON.
  factory ClaimCareTeamRoleCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimCareTeamRoleCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ClaimCareTeamRoleCodes._(value, element);
    }
    throw ArgumentError(
      'ClaimCareTeamRoleCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimCareTeamRoleCodes.primary([this.element])
      : dbValue = 'primary',
        super('primary', element);

  /// assist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimCareTeamRoleCodes.assist([this.element])
      : dbValue = 'assist',
        super('assist', element);

  /// supervisor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimCareTeamRoleCodes.supervisor([this.element])
      : dbValue = 'supervisor',
        super('supervisor', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimCareTeamRoleCodes.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  ClaimCareTeamRoleCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ClaimCareTeamRoleCodes._(super.input, [super.element])
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
    'primary',
    'assist',
    'supervisor',
    'other',
  ];

  /// Returns the enum value with an element attached
  ClaimCareTeamRoleCodes withElement(Element? newElement) {
    return ClaimCareTeamRoleCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClaimCareTeamRoleCodes.$value';
}

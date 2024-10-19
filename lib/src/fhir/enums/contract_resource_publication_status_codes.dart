// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set contract specific codes for status.
@Entity()
class ContractResourcePublicationStatusCodes extends FhirCode {
  /// Factory constructor to create [ContractResourcePublicationStatusCodes] from JSON.
  factory ContractResourcePublicationStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContractResourcePublicationStatusCodes._(value, element);
    }
    throw ArgumentError(
      'ContractResourcePublicationStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.amended([this.element])
      : dbValue = 'amended',
        super('amended', element);

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.appended([this.element])
      : dbValue = 'appended',
        super('appended', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// disputed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.disputed([this.element])
      : dbValue = 'disputed',
        super('disputed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// executable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.executable([this.element])
      : dbValue = 'executable',
        super('executable', element);

  /// executed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.executed([this.element])
      : dbValue = 'executed',
        super('executed', element);

  /// negotiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.negotiable([this.element])
      : dbValue = 'negotiable',
        super('negotiable', element);

  /// offered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.offered([this.element])
      : dbValue = 'offered',
        super('offered', element);

  /// policy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.policy([this.element])
      : dbValue = 'policy',
        super('policy', element);

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.rejected([this.element])
      : dbValue = 'rejected',
        super('rejected', element);

  /// renewed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.renewed([this.element])
      : dbValue = 'renewed',
        super('renewed', element);

  /// revoked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.revoked([this.element])
      : dbValue = 'revoked',
        super('revoked', element);

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.resolved([this.element])
      : dbValue = 'resolved',
        super('resolved', element);

  /// terminated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourcePublicationStatusCodes.terminated([this.element])
      : dbValue = 'terminated',
        super('terminated', element);

  /// For instances where an Element is present but not value

  ContractResourcePublicationStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContractResourcePublicationStatusCodes._(super.input, [super.element])
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
    'amended',
    'appended',
    'cancelled',
    'disputed',
    'entered-in-error',
    'executable',
    'executed',
    'negotiable',
    'offered',
    'policy',
    'rejected',
    'renewed',
    'revoked',
    'resolved',
    'terminated',
  ];

  /// Returns the enum value with an element attached
  ContractResourcePublicationStatusCodes withElement(Element? newElement) {
    return ContractResourcePublicationStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourcePublicationStatusCodes.$value';
}

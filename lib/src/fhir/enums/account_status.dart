// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates whether the account is available to be used.
@collection
class AccountStatus {
  /// Constructor for internal use (like enum)
  AccountStatus({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AccountStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AccountStatus active = AccountStatus(
    fhirCode: 'active',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AccountStatus inactive = AccountStatus(
    fhirCode: 'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AccountStatus entered_in_error = AccountStatus(
    fhirCode: 'entered-in-error',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AccountStatus on_hold = AccountStatus(
    fhirCode: 'on-hold',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AccountStatus unknown = AccountStatus(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final AccountStatus elementOnly = AccountStatus();

  /// List of all enum-like values
  static final List<AccountStatus> values = [
    active,
    inactive,
    entered_in_error,
    on_hold,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AccountStatus withElement(Element? newElement) {
    return AccountStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AccountStatus] from JSON.
  static AccountStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AccountStatus.elementOnly.withElement(element);
    }
    return AccountStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AccountStatus.$fhirCode';
}

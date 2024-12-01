// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the account is available to be used.
class AccountStatus {
  // Private constructor for internal use (like enum)
  AccountStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [AccountStatus] from JSON.
  factory AccountStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AccountStatus.elementOnly.withElement(element);
    }
    return AccountStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AccountStatus values
  /// active
  static final AccountStatus active = AccountStatus._(
    'active',
  );

  /// inactive
  static final AccountStatus inactive = AccountStatus._(
    'inactive',
  );

  /// entered_in_error
  static final AccountStatus entered_in_error = AccountStatus._(
    'entered-in-error',
  );

  /// on_hold
  static final AccountStatus on_hold = AccountStatus._(
    'on-hold',
  );

  /// unknown
  static final AccountStatus unknown = AccountStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final AccountStatus elementOnly = AccountStatus._('');

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
    return AccountStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}

// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the account is available to be used.
enum AccountStatus {
  /// Display: Active
  /// Definition: This account is active and may be used.
  active('active'),

  /// Display: Inactive
  /// Definition: This account is inactive and should not be used to track financial information.
  inactive('inactive'),

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error('entered-in-error'),

  /// Display: On Hold
  /// Definition: This account is on hold.
  on_hold('on-hold'),

  /// Display: Unknown
  /// Definition: The account status is unknown.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AccountStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AccountStatus] instances.
  static AccountStatus fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  AccountStatus withElement(Element? newElement) {
    return AccountStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

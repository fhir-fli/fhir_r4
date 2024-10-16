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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AccountStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AccountStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AccountStatus.elementOnly.withElement(element);
    }
    return AccountStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AccountStatus withElement(Element? newElement) {
    return AccountStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

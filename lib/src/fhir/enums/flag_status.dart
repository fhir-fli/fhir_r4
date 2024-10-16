import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.
enum FlagStatus {
  /// Display: Active
  /// Definition: A current flag that should be displayed to a user. A system may use the category to determine which user roles should view the flag.
  active('active'),

  /// Display: Inactive
  /// Definition: The flag no longer needs to be displayed.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The flag was added in error and should no longer be displayed.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FlagStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FlagStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagStatus.elementOnly.withElement(element);
    }
    return FlagStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FlagStatus withElement(Element? newElement) {
    return FlagStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

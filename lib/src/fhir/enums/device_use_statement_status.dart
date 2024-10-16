import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept indicating the current status of the Device Usage.
enum DeviceUseStatementStatus {
  /// Display: Active
  /// Definition: The device is still being used.
  active('active'),

  /// Display: Completed
  /// Definition: The device is no longer being used.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: The statement was recorded incorrectly.
  entered_in_error('entered-in-error'),

  /// Display: Intended
  /// Definition: The device may be used at some time in the future.
  intended('intended'),

  /// Display: Stopped
  /// Definition: Actions implied by the statement have been permanently halted, before all of them occurred.
  stopped('stopped'),

  /// Display: On Hold
  /// Definition: Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be called "suspended".
  on_hold('on-hold'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DeviceUseStatementStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DeviceUseStatementStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatus.elementOnly.withElement(element);
    }
    return DeviceUseStatementStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DeviceUseStatementStatus withElement(Element? newElement) {
    return DeviceUseStatementStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

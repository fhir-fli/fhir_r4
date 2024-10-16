import 'package:fhir_r4/fhir_r4.dart';

/// The type of direction to use for assertion.
enum AssertionDirectionType {
  /// Display: response
  /// Definition: The assertion is evaluated on the response. This is the default value.
  response('response'),

  /// Display: request
  /// Definition: The assertion is evaluated on the request.
  request('request'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AssertionDirectionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AssertionDirectionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionDirectionType.elementOnly.withElement(element);
    }
    return AssertionDirectionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AssertionDirectionType withElement(Element? newElement) {
    return AssertionDirectionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

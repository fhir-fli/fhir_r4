import 'package:fhir_r4/fhir_r4.dart';

/// The type of response code to use for assertion.
enum AssertionResponseTypes {
  /// Display: okay
  /// Definition: Response code is 200.
  okay('okay'),

  /// Display: created
  /// Definition: Response code is 201.
  created('created'),

  /// Display: noContent
  /// Definition: Response code is 204.
  noContent('noContent'),

  /// Display: notModified
  /// Definition: Response code is 304.
  notModified('notModified'),

  /// Display: bad
  /// Definition: Response code is 400.
  bad('bad'),

  /// Display: forbidden
  /// Definition: Response code is 403.
  forbidden('forbidden'),

  /// Display: notFound
  /// Definition: Response code is 404.
  notFound('notFound'),

  /// Display: methodNotAllowed
  /// Definition: Response code is 405.
  methodNotAllowed('methodNotAllowed'),

  /// Display: conflict
  /// Definition: Response code is 409.
  conflict('conflict'),

  /// Display: gone
  /// Definition: Response code is 410.
  gone('gone'),

  /// Display: preconditionFailed
  /// Definition: Response code is 412.
  preconditionFailed('preconditionFailed'),

  /// Display: unprocessable
  /// Definition: Response code is 422.
  unprocessable('unprocessable'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AssertionResponseTypes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AssertionResponseTypes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypes.elementOnly.withElement(element);
    }
    return AssertionResponseTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AssertionResponseTypes withElement(Element? newElement) {
    return AssertionResponseTypes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

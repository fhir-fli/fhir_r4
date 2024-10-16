import 'package:fhir_r4/fhir_r4.dart';

/// The validation status of the target
enum Status {
  /// Display: Attested
  /// Definition: ***TODO***
  attested('attested'),

  /// Display: Validated
  /// Definition: ***TODO***
  validated('validated'),

  /// Display: In process
  /// Definition: ***TODO***
  in_process('in-process'),

  /// Display: Requires revalidation
  /// Definition: ***TODO***
  req_revalid('req-revalid'),

  /// Display: Validation failed
  /// Definition: ***TODO***
  val_fail('val-fail'),

  /// Display: Re-Validation failed
  /// Definition: ***TODO***
  reval_fail('reval-fail'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const Status(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static Status fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Status.elementOnly.withElement(element);
    }
    return Status.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  Status withElement(Element? newElement) {
    return Status.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

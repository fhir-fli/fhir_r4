import 'package:fhir_r4/fhir_r4.dart';

/// The presentation types of notes.
enum NoteType {
  /// Display: Display
  /// Definition: Display the note.
  display('display'),

  /// Display: Print (Form)
  /// Definition: Print the note on the form.
  print('print'),

  /// Display: Print (Operator)
  /// Definition: Print the note for the operator.
  printoper('printoper'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NoteType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NoteType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly.withElement(element);
    }
    return NoteType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NoteType withElement(Element? newElement) {
    return NoteType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

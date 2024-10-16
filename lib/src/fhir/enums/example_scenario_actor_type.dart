import 'package:fhir_r4/fhir_r4.dart';

/// The type of actor - system or human.
enum ExampleScenarioActorType {
  /// Display: Person
  /// Definition: A person.
  person('person'),

  /// Display: System
  /// Definition: A system.
  entity('entity'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleScenarioActorType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleScenarioActorType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleScenarioActorType.elementOnly.withElement(element);
    }
    return ExampleScenarioActorType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleScenarioActorType withElement(Element? newElement) {
    return ExampleScenarioActorType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

import 'package:fhir_r4/fhir_r4.dart';

/// Color of the container cap.
enum ContainerCap {
  /// Display: red cap
  /// Definition: red cap.
  red('red'),

  /// Display: yellow cap
  /// Definition: yellow cap.
  yellow('yellow'),

  /// Display: dark yellow cap
  /// Definition: dark yellow cap.
  dark_yellow('dark-yellow'),

  /// Display: grey cap
  /// Definition: grey cap.
  grey('grey'),

  /// Display: light blue cap
  /// Definition: light blue cap.
  light_blue('light-blue'),

  /// Display: black cap
  /// Definition: black cap.
  black('black'),

  /// Display: green cap
  /// Definition: green cap.
  green('green'),

  /// Display: light green cap
  /// Definition: light green cap.
  light_green('light-green'),

  /// Display: lavender cap
  /// Definition: lavender cap.
  lavender('lavender'),

  /// Display: brown cap
  /// Definition: brown cap.
  brown('brown'),

  /// Display: white cap
  /// Definition: white cap.
  white('white'),

  /// Display: pink cap
  /// Definition: pink cap.
  pink('pink'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContainerCap(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContainerCap fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerCap.elementOnly.withElement(element);
    }
    return ContainerCap.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContainerCap withElement(Element? newElement) {
    return ContainerCap.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

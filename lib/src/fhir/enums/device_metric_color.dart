import 'package:fhir_r4/fhir_r4.dart';

/// Describes the typical color of representation.
enum DeviceMetricColor {
  /// Display: Color Black
  /// Definition: Color for representation - black.
  black('black'),

  /// Display: Color Red
  /// Definition: Color for representation - red.
  red('red'),

  /// Display: Color Green
  /// Definition: Color for representation - green.
  green('green'),

  /// Display: Color Yellow
  /// Definition: Color for representation - yellow.
  yellow('yellow'),

  /// Display: Color Blue
  /// Definition: Color for representation - blue.
  blue('blue'),

  /// Display: Color Magenta
  /// Definition: Color for representation - magenta.
  magenta('magenta'),

  /// Display: Color Cyan
  /// Definition: Color for representation - cyan.
  cyan('cyan'),

  /// Display: Color White
  /// Definition: Color for representation - white.
  white('white'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DeviceMetricColor(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DeviceMetricColor fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColor.elementOnly.withElement(element);
    }
    return DeviceMetricColor.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DeviceMetricColor withElement(Element? newElement) {
    return DeviceMetricColor.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}

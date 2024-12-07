// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Prescription Product codes.
class ExampleVisionPrescriptionProductCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleVisionPrescriptionProductCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ExampleVisionPrescriptionProductCodes] from JSON.
  factory ExampleVisionPrescriptionProductCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleVisionPrescriptionProductCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleVisionPrescriptionProductCodes cannot be constructed from JSON.',
      );
    }
    return ExampleVisionPrescriptionProductCodes._(
        value: value, element: element);
  }

  /// lens
  static final ExampleVisionPrescriptionProductCodes lens =
      ExampleVisionPrescriptionProductCodes._(
    value: 'lens',
  );

  /// contact
  static final ExampleVisionPrescriptionProductCodes contact =
      ExampleVisionPrescriptionProductCodes._(
    value: 'contact',
  );

  /// For instances where an Element is present but not value

  static final ExampleVisionPrescriptionProductCodes elementOnly =
      ExampleVisionPrescriptionProductCodes._(value: '');

  /// List of all enum-like values
  static final List<ExampleVisionPrescriptionProductCodes> values = [
    lens,
    contact,
  ];

  /// Clones the current instance
  @override
  ExampleVisionPrescriptionProductCodes clone() =>
      ExampleVisionPrescriptionProductCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleVisionPrescriptionProductCodes withElement(Element? newElement) {
    return ExampleVisionPrescriptionProductCodes._(
        value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ExampleVisionPrescriptionProductCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ExampleVisionPrescriptionProductCodes._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}

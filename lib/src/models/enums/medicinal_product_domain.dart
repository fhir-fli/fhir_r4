// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Applicable domain for this product (e.g. human, veterinary)
class MedicinalProductDomain extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicinalProductDomain._(super.value, [super.element]);

  /// Factory constructor to create [MedicinalProductDomain] from JSON.
  factory MedicinalProductDomain.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductDomain.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicinalProductDomain cannot be constructed from JSON.',
      );
    }
    return MedicinalProductDomain._(value, element);
  }

  /// Human
  static final MedicinalProductDomain Human = MedicinalProductDomain._(
    'Human',
  );

  /// Veterinary
  static final MedicinalProductDomain Veterinary = MedicinalProductDomain._(
    'Veterinary',
  );

  /// HumanAndVeterinary
  static final MedicinalProductDomain HumanAndVeterinary =
      MedicinalProductDomain._(
    'HumanAndVeterinary',
  );

  /// For instances where an Element is present but not value

  static final MedicinalProductDomain elementOnly =
      MedicinalProductDomain._('');

  /// List of all enum-like values
  static final List<MedicinalProductDomain> values = [
    Human,
    Veterinary,
    HumanAndVeterinary,
  ];

  /// Clones the current instance
  @override
  MedicinalProductDomain clone() => MedicinalProductDomain._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicinalProductDomain setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicinalProductDomain._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicinalProductDomain withElement(Element? newElement) {
    return MedicinalProductDomain._(value, newElement);
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
  MedicinalProductDomain copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MedicinalProductDomain._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}

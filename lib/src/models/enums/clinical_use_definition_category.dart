// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for a clinical use information item.
class ClinicalUseDefinitionCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ClinicalUseDefinitionCategory._(super.value, [super.element]);

  /// Factory constructor to create [ClinicalUseDefinitionCategory] from JSON.
  factory ClinicalUseDefinitionCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalUseDefinitionCategory cannot be constructed from JSON.',
      );
    }
    return ClinicalUseDefinitionCategory._(value, element);
  }

  /// Pregnancy
  static final ClinicalUseDefinitionCategory Pregnancy =
      ClinicalUseDefinitionCategory._(
    'Pregnancy',
  );

  /// Overdose
  static final ClinicalUseDefinitionCategory Overdose =
      ClinicalUseDefinitionCategory._(
    'Overdose',
  );

  /// DriveAndMachines
  static final ClinicalUseDefinitionCategory DriveAndMachines =
      ClinicalUseDefinitionCategory._(
    'DriveAndMachines',
  );

  /// For instances where an Element is present but not value

  static final ClinicalUseDefinitionCategory elementOnly =
      ClinicalUseDefinitionCategory._('');

  /// List of all enum-like values
  static final List<ClinicalUseDefinitionCategory> values = [
    Pregnancy,
    Overdose,
    DriveAndMachines,
  ];

  /// Clones the current instance
  @override
  ClinicalUseDefinitionCategory clone() => ClinicalUseDefinitionCategory._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ClinicalUseDefinitionCategory setElement(
    String name,
    dynamic elementValue,
  ) {
    return ClinicalUseDefinitionCategory._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionCategory withElement(Element? newElement) {
    return ClinicalUseDefinitionCategory._(value, newElement);
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
  ClinicalUseDefinitionCategory copyWith({
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
    return ClinicalUseDefinitionCategory._(
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

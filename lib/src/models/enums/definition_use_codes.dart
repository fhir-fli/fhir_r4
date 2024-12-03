// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Structure Definition Use Codes / Keywords
class DefinitionUseCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DefinitionUseCodes._(super.value, [super.element]);

  /// Factory constructor to create [DefinitionUseCodes] from JSON.
  factory DefinitionUseCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionUseCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DefinitionUseCodes cannot be constructed from JSON.',
      );
    }
    return DefinitionUseCodes._(value, element);
  }

  /// fhir_structure
  static final DefinitionUseCodes fhir_structure = DefinitionUseCodes._(
    'fhir-structure',
  );

  /// custom_resource
  static final DefinitionUseCodes custom_resource = DefinitionUseCodes._(
    'custom-resource',
  );

  /// dam
  static final DefinitionUseCodes dam = DefinitionUseCodes._(
    'dam',
  );

  /// wire_format
  static final DefinitionUseCodes wire_format = DefinitionUseCodes._(
    'wire-format',
  );

  /// archetype
  static final DefinitionUseCodes archetype = DefinitionUseCodes._(
    'archetype',
  );

  /// template
  static final DefinitionUseCodes template = DefinitionUseCodes._(
    'template',
  );

  /// For instances where an Element is present but not value

  static final DefinitionUseCodes elementOnly = DefinitionUseCodes._('');

  /// List of all enum-like values
  static final List<DefinitionUseCodes> values = [
    fhir_structure,
    custom_resource,
    dam,
    wire_format,
    archetype,
    template,
  ];

  /// Clones the current instance
  @override
  DefinitionUseCodes clone() => DefinitionUseCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DefinitionUseCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return DefinitionUseCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DefinitionUseCodes withElement(Element? newElement) {
    return DefinitionUseCodes._(value, newElement);
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
  DefinitionUseCodes copyWith({
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
    return DefinitionUseCodes._(
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

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The role that the assertion variable plays.
class EvidenceVariableRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceVariableRole._(super.value, [super.element]);

  /// Factory constructor to create [EvidenceVariableRole] from JSON.
  factory EvidenceVariableRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRole.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceVariableRole cannot be constructed from JSON.',
      );
    }
    return EvidenceVariableRole._(value, element);
  }

  /// population
  static final EvidenceVariableRole population = EvidenceVariableRole._(
    'population',
  );

  /// subpopulation
  static final EvidenceVariableRole subpopulation = EvidenceVariableRole._(
    'subpopulation',
  );

  /// exposure
  static final EvidenceVariableRole exposure = EvidenceVariableRole._(
    'exposure',
  );

  /// referenceExposure
  static final EvidenceVariableRole referenceExposure = EvidenceVariableRole._(
    'referenceExposure',
  );

  /// measuredVariable
  static final EvidenceVariableRole measuredVariable = EvidenceVariableRole._(
    'measuredVariable',
  );

  /// confounder
  static final EvidenceVariableRole confounder = EvidenceVariableRole._(
    'confounder',
  );

  /// For instances where an Element is present but not value

  static final EvidenceVariableRole elementOnly = EvidenceVariableRole._('');

  /// List of all enum-like values
  static final List<EvidenceVariableRole> values = [
    population,
    subpopulation,
    exposure,
    referenceExposure,
    measuredVariable,
    confounder,
  ];

  /// Clones the current instance
  @override
  EvidenceVariableRole clone() => EvidenceVariableRole._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EvidenceVariableRole setElement(
    String name,
    dynamic elementValue,
  ) {
    return EvidenceVariableRole._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EvidenceVariableRole withElement(Element? newElement) {
    return EvidenceVariableRole._(value, newElement);
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
  EvidenceVariableRole copyWith({
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
    return EvidenceVariableRole._(
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

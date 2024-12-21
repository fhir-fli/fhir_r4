// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease that the dose is being administered against. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
class ImmunizationTargetDiseaseCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationTargetDiseaseCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationTargetDiseaseCodes] from JSON.
  factory ImmunizationTargetDiseaseCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationTargetDiseaseCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationTargetDiseaseCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationTargetDiseaseCodes._(value, element: element);
  }

  /// value1857005
  static final ImmunizationTargetDiseaseCodes value1857005 =
      ImmunizationTargetDiseaseCodes._(
    '1857005',
  );

  /// value397430003
  static final ImmunizationTargetDiseaseCodes value397430003 =
      ImmunizationTargetDiseaseCodes._(
    '397430003',
  );

  /// value14189004
  static final ImmunizationTargetDiseaseCodes value14189004 =
      ImmunizationTargetDiseaseCodes._(
    '14189004',
  );

  /// value36989005
  static final ImmunizationTargetDiseaseCodes value36989005 =
      ImmunizationTargetDiseaseCodes._(
    '36989005',
  );

  /// value36653000
  static final ImmunizationTargetDiseaseCodes value36653000 =
      ImmunizationTargetDiseaseCodes._(
    '36653000',
  );

  /// value76902006
  static final ImmunizationTargetDiseaseCodes value76902006 =
      ImmunizationTargetDiseaseCodes._(
    '76902006',
  );

  /// value709410003
  static final ImmunizationTargetDiseaseCodes value709410003 =
      ImmunizationTargetDiseaseCodes._(
    '709410003',
  );

  /// value27836007
  static final ImmunizationTargetDiseaseCodes value27836007 =
      ImmunizationTargetDiseaseCodes._(
    '27836007',
  );

  /// value398102009
  static final ImmunizationTargetDiseaseCodes value398102009 =
      ImmunizationTargetDiseaseCodes._(
    '398102009',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationTargetDiseaseCodes elementOnly =
      ImmunizationTargetDiseaseCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationTargetDiseaseCodes> values = [
    value1857005,
    value397430003,
    value14189004,
    value36989005,
    value36653000,
    value76902006,
    value709410003,
    value27836007,
    value398102009,
  ];

  /// Clones the current instance
  @override
  ImmunizationTargetDiseaseCodes clone() => ImmunizationTargetDiseaseCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationTargetDiseaseCodes withElement(Element? newElement) {
    return ImmunizationTargetDiseaseCodes._(
      value,
      element: newElement,
    );
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
  ImmunizationTargetDiseaseCodes copyWith({
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
    return ImmunizationTargetDiseaseCodes._(
      newValue ?? value,
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

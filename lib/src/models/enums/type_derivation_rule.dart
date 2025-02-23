// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// How a type relates to its baseDefinition.
class TypeDerivationRule extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  TypeDerivationRule._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [TypeDerivationRule] with element only
  factory TypeDerivationRule.empty() => TypeDerivationRule._('');

  /// Factory constructor to create [TypeDerivationRule] from JSON.
  factory TypeDerivationRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeDerivationRule.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeDerivationRule cannot be constructed from JSON.',
      );
    }
    return TypeDerivationRule._(
      value,
      element: element,
    );
  }

  /// specialization
  static final TypeDerivationRule specialization = TypeDerivationRule._(
    'specialization',
    system: 'http://hl7.org/fhir/ValueSet/type-derivation-rule'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Specialization'.toFhirString,
  );

  /// constraint
  static final TypeDerivationRule constraint = TypeDerivationRule._(
    'constraint',
    system: 'http://hl7.org/fhir/ValueSet/type-derivation-rule'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Constraint'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final TypeDerivationRule elementOnly = TypeDerivationRule._('');

  /// List of all enum-like values
  static final List<TypeDerivationRule> values = [
    specialization,
    constraint,
  ];

  /// Clones the current instance
  @override
  TypeDerivationRule clone() => TypeDerivationRule._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TypeDerivationRule withElement(Element? newElement) {
    return TypeDerivationRule._(
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
  TypeDerivationRule copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TypeDerivationRule._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}

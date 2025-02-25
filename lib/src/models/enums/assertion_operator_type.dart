// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of operator to use for assertion.
class AssertionOperatorType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  AssertionOperatorType._(
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

  /// Create empty [AssertionOperatorType] with element only
  factory AssertionOperatorType.empty() => AssertionOperatorType._('');

  /// Factory constructor to create [AssertionOperatorType] from JSON.
  factory AssertionOperatorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionOperatorType cannot be constructed from JSON.',
      );
    }
    return AssertionOperatorType._(
      value,
      element: element,
    );
  }

  /// equals
  static final AssertionOperatorType equals_ = AssertionOperatorType._(
    'equals',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'equals'.toFhirString,
  );

  /// notEquals
  static final AssertionOperatorType notEquals = AssertionOperatorType._(
    'notEquals',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notEquals'.toFhirString,
  );

  /// in_
  static final AssertionOperatorType in_ = AssertionOperatorType._(
    'in',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'in'.toFhirString,
  );

  /// notIn
  static final AssertionOperatorType notIn = AssertionOperatorType._(
    'notIn',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notIn'.toFhirString,
  );

  /// greaterThan
  static final AssertionOperatorType greaterThan = AssertionOperatorType._(
    'greaterThan',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'greaterThan'.toFhirString,
  );

  /// lessThan
  static final AssertionOperatorType lessThan = AssertionOperatorType._(
    'lessThan',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'lessThan'.toFhirString,
  );

  /// empty_
  static final AssertionOperatorType empty_ = AssertionOperatorType._(
    'empty',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'empty'.toFhirString,
  );

  /// notEmpty
  static final AssertionOperatorType notEmpty = AssertionOperatorType._(
    'notEmpty',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notEmpty'.toFhirString,
  );

  /// contains
  static final AssertionOperatorType contains = AssertionOperatorType._(
    'contains',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'contains'.toFhirString,
  );

  /// notContains
  static final AssertionOperatorType notContains = AssertionOperatorType._(
    'notContains',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notContains'.toFhirString,
  );

  /// eval
  static final AssertionOperatorType eval = AssertionOperatorType._(
    'eval',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'evaluate'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final AssertionOperatorType elementOnly = AssertionOperatorType._('');

  /// List of all enum-like values
  static final List<AssertionOperatorType> values = [
    equals_,
    notEquals,
    in_,
    notIn,
    greaterThan,
    lessThan,
    empty_,
    notEmpty,
    contains,
    notContains,
    eval,
  ];

  /// Clones the current instance
  @override
  AssertionOperatorType clone() => AssertionOperatorType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType._(
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
  AssertionOperatorType copyWith({
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
    return AssertionOperatorType._(
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

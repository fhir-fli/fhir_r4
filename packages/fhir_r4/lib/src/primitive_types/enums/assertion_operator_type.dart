// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of operator to use for assertion.
class AssertionOperatorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AssertionOperatorType._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory AssertionOperatorType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return AssertionOperatorType._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [AssertionOperatorType] with element only
  factory AssertionOperatorType.empty() =>
      AssertionOperatorType._(valueString: '');

  /// Factory constructor to create [AssertionOperatorType]
  /// from JSON.
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
      valueString: value,
      element: element,
    );
  }

  /// equals
  static final AssertionOperatorType equals_ = AssertionOperatorType._(
    valueString: 'equals',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'equals'.toFhirString,
  );

  /// notEquals
  static final AssertionOperatorType notEquals = AssertionOperatorType._(
    valueString: 'notEquals',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notEquals'.toFhirString,
  );

  /// in_
  static final AssertionOperatorType in_ = AssertionOperatorType._(
    valueString: 'in',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'in'.toFhirString,
  );

  /// notIn
  static final AssertionOperatorType notIn = AssertionOperatorType._(
    valueString: 'notIn',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notIn'.toFhirString,
  );

  /// greaterThan
  static final AssertionOperatorType greaterThan = AssertionOperatorType._(
    valueString: 'greaterThan',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'greaterThan'.toFhirString,
  );

  /// lessThan
  static final AssertionOperatorType lessThan = AssertionOperatorType._(
    valueString: 'lessThan',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'lessThan'.toFhirString,
  );

  /// empty_
  static final AssertionOperatorType empty_ = AssertionOperatorType._(
    valueString: 'empty',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'empty'.toFhirString,
  );

  /// notEmpty
  static final AssertionOperatorType notEmpty = AssertionOperatorType._(
    valueString: 'notEmpty',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notEmpty'.toFhirString,
  );

  /// contains_
  static final AssertionOperatorType contains_ = AssertionOperatorType._(
    valueString: 'contains',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'contains'.toFhirString,
  );

  /// notContains
  static final AssertionOperatorType notContains = AssertionOperatorType._(
    valueString: 'notContains',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notContains'.toFhirString,
  );

  /// eval
  static final AssertionOperatorType eval = AssertionOperatorType._(
    valueString: 'eval',
    system: 'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'evaluate'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AssertionOperatorType elementOnly =
      AssertionOperatorType._(valueString: '');

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
    contains_,
    notContains,
    eval,
  ];

  /// Clones the current instance
  @override
  AssertionOperatorType clone() => AssertionOperatorType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AssertionOperatorType copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for AssertionOperatorType: $newValue',
      );
    }
    return AssertionOperatorType._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}

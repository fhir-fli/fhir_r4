// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The kind of operation to perform as a part of a property based filter.
class FilterOperator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FilterOperator._({
    required super.validatedValue,
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
  factory FilterOperator(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return FilterOperator._(
      validatedValue: validated,
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

  /// Create empty [FilterOperator] with element only
  factory FilterOperator.empty() => FilterOperator._(validatedValue: '');

  /// Factory constructor to create [FilterOperator] from JSON.
  factory FilterOperator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FilterOperator cannot be constructed from JSON.',
      );
    }
    return FilterOperator._(
      validatedValue: value,
      element: element,
    );
  }

  /// eq
  static final FilterOperator eq = FilterOperator._(
    validatedValue: '=',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Equals'.toFhirString,
  );

  /// is_a
  static final FilterOperator is_a = FilterOperator._(
    validatedValue: 'is-a',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Is A (by subsumption)'.toFhirString,
  );

  /// descendent_of
  static final FilterOperator descendent_of = FilterOperator._(
    validatedValue: 'descendent-of',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Descendent Of (by subsumption)'.toFhirString,
  );

  /// is_not_a
  static final FilterOperator is_not_a = FilterOperator._(
    validatedValue: 'is-not-a',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not (Is A) (by subsumption)'.toFhirString,
  );

  /// regex
  static final FilterOperator regex = FilterOperator._(
    validatedValue: 'regex',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Regular Expression'.toFhirString,
  );

  /// in_
  static final FilterOperator in_ = FilterOperator._(
    validatedValue: 'in',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Set'.toFhirString,
  );

  /// not_in
  static final FilterOperator not_in = FilterOperator._(
    validatedValue: 'not-in',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not in Set'.toFhirString,
  );

  /// generalizes
  static final FilterOperator generalizes = FilterOperator._(
    validatedValue: 'generalizes',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generalizes (by Subsumption)'.toFhirString,
  );

  /// exists
  static final FilterOperator exists = FilterOperator._(
    validatedValue: 'exists',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exists'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FilterOperator elementOnly =
      FilterOperator._(validatedValue: '');

  /// List of all enum-like values
  static final List<FilterOperator> values = [
    eq,
    is_a,
    descendent_of,
    is_not_a,
    regex,
    in_,
    not_in,
    generalizes,
    exists,
  ];

  /// Clones the current instance
  @override
  FilterOperator clone() => FilterOperator._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FilterOperator withElement(Element? newElement) {
    return FilterOperator._(validatedValue: value, element: newElement);
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
  FilterOperator copyWith({
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
    return FilterOperator._(
      validatedValue: newValue ?? value,
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

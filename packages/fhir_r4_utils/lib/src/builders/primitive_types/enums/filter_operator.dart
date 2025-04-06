// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The kind of operation to perform as a part of a property based filter.
class FilterOperatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FilterOperatorBuilder._({
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
  factory FilterOperatorBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return FilterOperatorBuilder._(
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

  /// Create empty [FilterOperatorBuilder] with element only
  factory FilterOperatorBuilder.empty() =>
      FilterOperatorBuilder._(valueString: '');

  /// Factory constructor to create [FilterOperatorBuilder]
  /// from JSON.
  factory FilterOperatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperatorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FilterOperatorBuilder cannot be constructed from JSON.',
      );
    }
    return FilterOperatorBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// eq
  static FilterOperatorBuilder eq = FilterOperatorBuilder._(
    valueString: '=',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Equals'.toFhirStringBuilder,
  );

  /// is_a
  static FilterOperatorBuilder is_a = FilterOperatorBuilder._(
    valueString: 'is-a',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Is A (by subsumption)'.toFhirStringBuilder,
  );

  /// descendent_of
  static FilterOperatorBuilder descendent_of = FilterOperatorBuilder._(
    valueString: 'descendent-of',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Descendent Of (by subsumption)'.toFhirStringBuilder,
  );

  /// is_not_a
  static FilterOperatorBuilder is_not_a = FilterOperatorBuilder._(
    valueString: 'is-not-a',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not (Is A) (by subsumption)'.toFhirStringBuilder,
  );

  /// regex
  static FilterOperatorBuilder regex = FilterOperatorBuilder._(
    valueString: 'regex',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Regular Expression'.toFhirStringBuilder,
  );

  /// in_
  static FilterOperatorBuilder in_ = FilterOperatorBuilder._(
    valueString: 'in',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Set'.toFhirStringBuilder,
  );

  /// not_in
  static FilterOperatorBuilder not_in = FilterOperatorBuilder._(
    valueString: 'not-in',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not in Set'.toFhirStringBuilder,
  );

  /// generalizes
  static FilterOperatorBuilder generalizes = FilterOperatorBuilder._(
    valueString: 'generalizes',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Generalizes (by Subsumption)'.toFhirStringBuilder,
  );

  /// exists
  static FilterOperatorBuilder exists = FilterOperatorBuilder._(
    valueString: 'exists',
    system: 'http://hl7.org/fhir/ValueSet/filter-operator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Exists'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static FilterOperatorBuilder elementOnly =
      FilterOperatorBuilder._(valueString: '');

  /// List of all enum-like values
  static List<FilterOperatorBuilder> values = [
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
  FilterOperatorBuilder clone() => FilterOperatorBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  FilterOperatorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FilterOperatorBuilder._(
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
  FilterOperatorBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for FilterOperator: $newValue',
      );
    }
    return FilterOperatorBuilder._(
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

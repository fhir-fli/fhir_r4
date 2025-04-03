// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the Quantity should be understood and represented.
class QuantityComparatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuantityComparatorBuilder._({
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
  factory QuantityComparatorBuilder(
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
    return QuantityComparatorBuilder._(
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

  /// Create empty [QuantityComparatorBuilder] with element only
  factory QuantityComparatorBuilder.empty() =>
      QuantityComparatorBuilder._(valueString: '');

  /// Factory constructor to create [QuantityComparatorBuilder]
  /// from JSON.
  factory QuantityComparatorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparatorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuantityComparatorBuilder cannot be constructed from JSON.',
      );
    }
    return QuantityComparatorBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// lt
  static QuantityComparatorBuilder lt = QuantityComparatorBuilder._(
    valueString: '<',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less than'.toFhirStringBuilder,
  );

  /// le
  static QuantityComparatorBuilder le = QuantityComparatorBuilder._(
    valueString: '<=',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less or Equal to'.toFhirStringBuilder,
  );

  /// ge
  static QuantityComparatorBuilder ge = QuantityComparatorBuilder._(
    valueString: '>=',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater or Equal to'.toFhirStringBuilder,
  );

  /// gt
  static QuantityComparatorBuilder gt = QuantityComparatorBuilder._(
    valueString: '>',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater than'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static QuantityComparatorBuilder elementOnly =
      QuantityComparatorBuilder._(valueString: '');

  /// List of all enum-like values
  static List<QuantityComparatorBuilder> values = [
    lt,
    le,
    ge,
    gt,
  ];

  /// Clones the current instance
  @override
  QuantityComparatorBuilder clone() => QuantityComparatorBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  QuantityComparatorBuilder withElement(ElementBuilder? newElement) {
    return QuantityComparatorBuilder._(
        valueString: valueString, element: newElement,);
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
  QuantityComparatorBuilder copyWith({
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
      throw ArgumentError('Invalid input for QuantityComparator: $newValue');
    }
    return QuantityComparatorBuilder._(
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

// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type for orientation.
class OrientationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OrientationTypeBuilder._({
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
  factory OrientationTypeBuilder(
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
    return OrientationTypeBuilder._(
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

  /// Create empty [OrientationTypeBuilder] with element only
  factory OrientationTypeBuilder.empty() =>
      OrientationTypeBuilder._(valueString: '');

  /// Factory constructor to create [OrientationTypeBuilder]
  /// from JSON.
  factory OrientationTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OrientationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return OrientationTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// sense
  static OrientationTypeBuilder sense = OrientationTypeBuilder._(
    valueString: 'sense',
    system: 'http://hl7.org/fhir/ValueSet/orientation-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sense orientation of referenceSeq'.toFhirStringBuilder,
  );

  /// antisense
  static OrientationTypeBuilder antisense = OrientationTypeBuilder._(
    valueString: 'antisense',
    system: 'http://hl7.org/fhir/ValueSet/orientation-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Antisense orientation of referenceSeq'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static OrientationTypeBuilder elementOnly =
      OrientationTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<OrientationTypeBuilder> values = [
    sense,
    antisense,
  ];

  /// Clones the current instance
  @override
  OrientationTypeBuilder clone() => OrientationTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  OrientationTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return OrientationTypeBuilder._(
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
  OrientationTypeBuilder copyWith({
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
        'Invalid input for OrientationType: $newValue',
      );
    }
    return OrientationTypeBuilder._(
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

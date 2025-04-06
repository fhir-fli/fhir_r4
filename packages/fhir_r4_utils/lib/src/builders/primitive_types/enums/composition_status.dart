// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The workflow/clinical status of the composition.
class CompositionStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CompositionStatusBuilder._({
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
  factory CompositionStatusBuilder(
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
    return CompositionStatusBuilder._(
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

  /// Create empty [CompositionStatusBuilder] with element only
  factory CompositionStatusBuilder.empty() =>
      CompositionStatusBuilder._(valueString: '');

  /// Factory constructor to create [CompositionStatusBuilder]
  /// from JSON.
  factory CompositionStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionStatusBuilder cannot be constructed from JSON.',
      );
    }
    return CompositionStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// preliminary
  static CompositionStatusBuilder preliminary = CompositionStatusBuilder._(
    valueString: 'preliminary',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preliminary'.toFhirStringBuilder,
  );

  /// final_
  static CompositionStatusBuilder final_ = CompositionStatusBuilder._(
    valueString: 'final',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Final'.toFhirStringBuilder,
  );

  /// amended
  static CompositionStatusBuilder amended = CompositionStatusBuilder._(
    valueString: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Amended'.toFhirStringBuilder,
  );

  /// entered_in_error
  static CompositionStatusBuilder entered_in_error = CompositionStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CompositionStatusBuilder elementOnly =
      CompositionStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CompositionStatusBuilder> values = [
    preliminary,
    final_,
    amended,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CompositionStatusBuilder clone() => CompositionStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CompositionStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CompositionStatusBuilder._(
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
  CompositionStatusBuilder copyWith({
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
        'Invalid input for CompositionStatus: $newValue',
      );
    }
    return CompositionStatusBuilder._(
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

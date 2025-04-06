// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Whether an operation parameter is an input or an output parameter.
class OperationParameterUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OperationParameterUseBuilder._({
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
  factory OperationParameterUseBuilder(
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
    return OperationParameterUseBuilder._(
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

  /// Create empty [OperationParameterUseBuilder] with element only
  factory OperationParameterUseBuilder.empty() =>
      OperationParameterUseBuilder._(valueString: '');

  /// Factory constructor to create [OperationParameterUseBuilder]
  /// from JSON.
  factory OperationParameterUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterUseBuilder cannot be constructed from JSON.',
      );
    }
    return OperationParameterUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// in_
  static OperationParameterUseBuilder in_ = OperationParameterUseBuilder._(
    valueString: 'in',
    system:
        'http://hl7.org/fhir/ValueSet/operation-parameter-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In'.toFhirStringBuilder,
  );

  /// out
  static OperationParameterUseBuilder out = OperationParameterUseBuilder._(
    valueString: 'out',
    system:
        'http://hl7.org/fhir/ValueSet/operation-parameter-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Out'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static OperationParameterUseBuilder elementOnly =
      OperationParameterUseBuilder._(valueString: '');

  /// List of all enum-like values
  static List<OperationParameterUseBuilder> values = [
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  OperationParameterUseBuilder clone() => OperationParameterUseBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  OperationParameterUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return OperationParameterUseBuilder._(
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
  OperationParameterUseBuilder copyWith({
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
        'Invalid input for OperationParameterUse: $newValue',
      );
    }
    return OperationParameterUseBuilder._(
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

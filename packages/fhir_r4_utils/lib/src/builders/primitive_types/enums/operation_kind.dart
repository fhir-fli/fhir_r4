// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Whether an operation is a normal operation or a query.
class OperationKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OperationKindBuilder._({
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
  factory OperationKindBuilder(
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
    return OperationKindBuilder._(
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

  /// Create empty [OperationKindBuilder] with element only
  factory OperationKindBuilder.empty() =>
      OperationKindBuilder._(valueString: '');

  /// Factory constructor to create [OperationKindBuilder]
  /// from JSON.
  factory OperationKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKindBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationKindBuilder cannot be constructed from JSON.',
      );
    }
    return OperationKindBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// operation
  static OperationKindBuilder operation = OperationKindBuilder._(
    valueString: 'operation',
    system: 'http://hl7.org/fhir/ValueSet/operation-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Operation'.toFhirStringBuilder,
  );

  /// query
  static OperationKindBuilder query = OperationKindBuilder._(
    valueString: 'query',
    system: 'http://hl7.org/fhir/ValueSet/operation-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Query'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static OperationKindBuilder elementOnly =
      OperationKindBuilder._(valueString: '');

  /// List of all enum-like values
  static List<OperationKindBuilder> values = [
    operation,
    query,
  ];

  /// Clones the current instance
  @override
  OperationKindBuilder clone() => OperationKindBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  OperationKindBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return OperationKindBuilder._(
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
  OperationKindBuilder copyWith({
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
        'Invalid input for OperationKind: $newValue',
      );
    }
    return OperationKindBuilder._(
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

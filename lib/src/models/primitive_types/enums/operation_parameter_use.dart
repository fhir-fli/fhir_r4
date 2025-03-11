// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Whether an operation parameter is an input or an output parameter.
class OperationParameterUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  OperationParameterUse._({
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
  factory OperationParameterUse(
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
    return OperationParameterUse._(
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

  /// Create empty [OperationParameterUse] with element only
  factory OperationParameterUse.empty() =>
      OperationParameterUse._(validatedValue: '');

  /// Factory constructor to create [OperationParameterUse] from JSON.
  factory OperationParameterUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterUse cannot be constructed from JSON.',
      );
    }
    return OperationParameterUse._(validatedValue: value, element: element);
  }

  /// in_
  static final OperationParameterUse in_ = OperationParameterUse._(
    validatedValue: 'in',
    system: 'http://hl7.org/fhir/ValueSet/operation-parameter-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In'.toFhirString,
  );

  /// out
  static final OperationParameterUse out = OperationParameterUse._(
    validatedValue: 'out',
    system: 'http://hl7.org/fhir/ValueSet/operation-parameter-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Out'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final OperationParameterUse elementOnly =
      OperationParameterUse._(validatedValue: '');

  /// List of all enum-like values
  static final List<OperationParameterUse> values = [
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  OperationParameterUse clone() => OperationParameterUse._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  OperationParameterUse withElement(Element? newElement) {
    return OperationParameterUse._(validatedValue: value, element: newElement);
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
  OperationParameterUse copyWith({
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
    return OperationParameterUse._(
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

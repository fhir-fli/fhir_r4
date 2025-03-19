// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Whether an operation is a normal operation or a query.
class OperationKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  OperationKind._({
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
  factory OperationKind(
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
    return OperationKind._(
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

  /// Create empty [OperationKind] with element only
  factory OperationKind.empty() => OperationKind._(validatedValue: '');

  /// Factory constructor to create [OperationKind] from JSON.
  factory OperationKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKind.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('OperationKind cannot be constructed from JSON.');
    }
    return OperationKind._(validatedValue: value, element: element);
  }

  /// operation
  static final OperationKind operation = OperationKind._(
    validatedValue: 'operation',
    system: 'http://hl7.org/fhir/ValueSet/operation-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Operation'.toFhirString,
  );

  /// query
  static final OperationKind query = OperationKind._(
    validatedValue: 'query',
    system: 'http://hl7.org/fhir/ValueSet/operation-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Query'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final OperationKind elementOnly = OperationKind._(validatedValue: '');

  /// List of all enum-like values
  static final List<OperationKind> values = [
    operation,
    query,
  ];

  /// Clones the current instance
  @override
  OperationKind clone() => OperationKind._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  OperationKind withElement(Element? newElement) {
    return OperationKind._(validatedValue: value, element: newElement);
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
  OperationKind copyWith({
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
    return OperationKind._(
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

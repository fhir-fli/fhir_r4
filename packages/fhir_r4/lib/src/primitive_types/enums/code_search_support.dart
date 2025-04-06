// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The degree to which the server supports the code search parameter on
/// ValueSet, if it is supported.
class CodeSearchSupport extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CodeSearchSupport._({
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
  factory CodeSearchSupport(
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
    return CodeSearchSupport._(
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

  /// Create empty [CodeSearchSupport] with element only
  factory CodeSearchSupport.empty() => CodeSearchSupport._(valueString: '');

  /// Factory constructor to create [CodeSearchSupport]
  /// from JSON.
  factory CodeSearchSupport.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupport.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSearchSupport cannot be constructed from JSON.',
      );
    }
    return CodeSearchSupport._(
      valueString: value,
      element: element,
    );
  }

  /// explicit
  static final CodeSearchSupport explicit = CodeSearchSupport._(
    valueString: 'explicit',
    system: 'http://hl7.org/fhir/ValueSet/code-search-support'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Explicit Codes'.toFhirString,
  );

  /// all
  static final CodeSearchSupport all = CodeSearchSupport._(
    valueString: 'all',
    system: 'http://hl7.org/fhir/ValueSet/code-search-support'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Implicit Codes'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CodeSearchSupport elementOnly =
      CodeSearchSupport._(valueString: '');

  /// List of all enum-like values
  static final List<CodeSearchSupport> values = [
    explicit,
    all,
  ];

  /// Clones the current instance
  @override
  CodeSearchSupport clone() => CodeSearchSupport._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CodeSearchSupport withElement(Element? newElement) {
    return CodeSearchSupport._(
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
  CodeSearchSupport copyWith({
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
        'Invalid input for CodeSearchSupport: $newValue',
      );
    }
    return CodeSearchSupport._(
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

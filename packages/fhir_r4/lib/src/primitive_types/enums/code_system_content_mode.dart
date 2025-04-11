// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CodeSystemContentMode
enum CodeSystemContentModeEnum {
  /// not-present
  notPresent,

  /// example
  example,

  /// fragment
  fragment,

  /// complete
  complete,

  /// supplement
  supplement,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CodeSystemContentModeEnum.notPresent:
        return 'not-present';
      case CodeSystemContentModeEnum.example:
        return 'example';
      case CodeSystemContentModeEnum.fragment:
        return 'fragment';
      case CodeSystemContentModeEnum.complete:
        return 'complete';
      case CodeSystemContentModeEnum.supplement:
        return 'supplement';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CodeSystemContentModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CodeSystemContentModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CodeSystemContentModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-present':
        return CodeSystemContentModeEnum.notPresent;
      case 'example':
        return CodeSystemContentModeEnum.example;
      case 'fragment':
        return CodeSystemContentModeEnum.fragment;
      case 'complete':
        return CodeSystemContentModeEnum.complete;
      case 'supplement':
        return CodeSystemContentModeEnum.supplement;
    }
    return null;
  }
}

/// The extent of the content of the code system (the concepts and codes it
/// defines) are represented in a code system resource.
class CodeSystemContentMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CodeSystemContentMode._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CodeSystemContentMode(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = CodeSystemContentModeEnum.fromString(valueString);
    return CodeSystemContentMode._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [CodeSystemContentMode]
  /// from JSON.
  factory CodeSystemContentMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CodeSystemContentModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemContentMode cannot be constructed from JSON.',
      );
    }
    return CodeSystemContentMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CodeSystemContentMode
  final CodeSystemContentModeEnum? valueEnum;

  /// not_present
  static const CodeSystemContentMode notPresent = CodeSystemContentMode._(
    valueString: 'not-present',
    valueEnum: CodeSystemContentModeEnum.notPresent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Present',
    ),
  );

  /// example
  static const CodeSystemContentMode example = CodeSystemContentMode._(
    valueString: 'example',
    valueEnum: CodeSystemContentModeEnum.example,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Example',
    ),
  );

  /// fragment
  static const CodeSystemContentMode fragment = CodeSystemContentMode._(
    valueString: 'fragment',
    valueEnum: CodeSystemContentModeEnum.fragment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fragment',
    ),
  );

  /// complete
  static const CodeSystemContentMode complete = CodeSystemContentMode._(
    valueString: 'complete',
    valueEnum: CodeSystemContentModeEnum.complete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Complete',
    ),
  );

  /// supplement
  static const CodeSystemContentMode supplement = CodeSystemContentMode._(
    valueString: 'supplement',
    valueEnum: CodeSystemContentModeEnum.supplement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Supplement',
    ),
  );

  /// List of all enum-like values
  static final List<CodeSystemContentMode> values = [
    notPresent,
    example,
    fragment,
    complete,
    supplement,
  ];

  /// Returns the enum value with an element attached
  CodeSystemContentMode withElement(Element? newElement) {
    return CodeSystemContentMode._(
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

  @override
  CodeSystemContentMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CodeSystemContentModeCopyWithImpl<CodeSystemContentMode> get copyWith =>
      CodeSystemContentModeCopyWithImpl<CodeSystemContentMode>(
        this,
        (v) => v as CodeSystemContentMode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CodeSystemContentModeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CodeSystemContentModeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      CodeSystemContentMode(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

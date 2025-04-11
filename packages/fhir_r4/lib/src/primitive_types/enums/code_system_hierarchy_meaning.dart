// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CodeSystemHierarchyMeaning
enum CodeSystemHierarchyMeaningEnum {
  /// grouped-by
  groupedBy,

  /// is-a
  isA,

  /// part-of
  partOf,

  /// classified-with
  classifiedWith,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CodeSystemHierarchyMeaningEnum.groupedBy:
        return 'grouped-by';
      case CodeSystemHierarchyMeaningEnum.isA:
        return 'is-a';
      case CodeSystemHierarchyMeaningEnum.partOf:
        return 'part-of';
      case CodeSystemHierarchyMeaningEnum.classifiedWith:
        return 'classified-with';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CodeSystemHierarchyMeaningEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CodeSystemHierarchyMeaningEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CodeSystemHierarchyMeaningEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'grouped-by':
        return CodeSystemHierarchyMeaningEnum.groupedBy;
      case 'is-a':
        return CodeSystemHierarchyMeaningEnum.isA;
      case 'part-of':
        return CodeSystemHierarchyMeaningEnum.partOf;
      case 'classified-with':
        return CodeSystemHierarchyMeaningEnum.classifiedWith;
    }
    return null;
  }
}

/// The meaning of the hierarchy of concepts in a code system.
class CodeSystemHierarchyMeaning extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CodeSystemHierarchyMeaning._({
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
  factory CodeSystemHierarchyMeaning(
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
    final valueEnum = CodeSystemHierarchyMeaningEnum.fromString(valueString);
    return CodeSystemHierarchyMeaning._(
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

  /// Factory constructor to create [CodeSystemHierarchyMeaning]
  /// from JSON.
  factory CodeSystemHierarchyMeaning.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CodeSystemHierarchyMeaningEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaning._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemHierarchyMeaning cannot be constructed from JSON.',
      );
    }
    return CodeSystemHierarchyMeaning._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CodeSystemHierarchyMeaning
  final CodeSystemHierarchyMeaningEnum? valueEnum;

  /// grouped_by
  static const CodeSystemHierarchyMeaning groupedBy =
      CodeSystemHierarchyMeaning._(
    valueString: 'grouped-by',
    valueEnum: CodeSystemHierarchyMeaningEnum.groupedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Grouped By',
    ),
  );

  /// is_a
  static const CodeSystemHierarchyMeaning isA = CodeSystemHierarchyMeaning._(
    valueString: 'is-a',
    valueEnum: CodeSystemHierarchyMeaningEnum.isA,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Is-A',
    ),
  );

  /// part_of
  static const CodeSystemHierarchyMeaning partOf = CodeSystemHierarchyMeaning._(
    valueString: 'part-of',
    valueEnum: CodeSystemHierarchyMeaningEnum.partOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Part Of',
    ),
  );

  /// classified_with
  static const CodeSystemHierarchyMeaning classifiedWith =
      CodeSystemHierarchyMeaning._(
    valueString: 'classified-with',
    valueEnum: CodeSystemHierarchyMeaningEnum.classifiedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Classified With',
    ),
  );

  /// List of all enum-like values
  static final List<CodeSystemHierarchyMeaning> values = [
    groupedBy,
    isA,
    partOf,
    classifiedWith,
  ];

  /// Returns the enum value with an element attached
  CodeSystemHierarchyMeaning withElement(Element? newElement) {
    return CodeSystemHierarchyMeaning._(
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
  CodeSystemHierarchyMeaning clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CodeSystemHierarchyMeaningCopyWithImpl<CodeSystemHierarchyMeaning>
      get copyWith =>
          CodeSystemHierarchyMeaningCopyWithImpl<CodeSystemHierarchyMeaning>(
            this,
            (v) => v as CodeSystemHierarchyMeaning,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CodeSystemHierarchyMeaningCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CodeSystemHierarchyMeaningCopyWithImpl(super._value, super._then);

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
      CodeSystemHierarchyMeaning(
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

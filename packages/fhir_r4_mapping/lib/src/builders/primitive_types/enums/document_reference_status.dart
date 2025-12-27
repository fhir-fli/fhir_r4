part of '../primitive_types.dart';

/// Actual enum for DocumentReferenceStatus
enum DocumentReferenceStatusBuilderEnum {
  /// current
  current,

  /// superseded
  superseded,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DocumentReferenceStatusBuilderEnum.current:
        return 'current';
      case DocumentReferenceStatusBuilderEnum.superseded:
        return 'superseded';
      case DocumentReferenceStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DocumentReferenceStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DocumentReferenceStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DocumentReferenceStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'current':
        return DocumentReferenceStatusBuilderEnum.current;
      case 'superseded':
        return DocumentReferenceStatusBuilderEnum.superseded;
      case 'entered-in-error':
        return DocumentReferenceStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The status of the document reference.
class DocumentReferenceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DocumentReferenceStatusBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory DocumentReferenceStatusBuilder(
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
    final valueEnum = DocumentReferenceStatusBuilderEnum.fromString(
      valueString,
    );
    return DocumentReferenceStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [DocumentReferenceStatusBuilder]
  /// with element only
  factory DocumentReferenceStatusBuilder.empty() =>
      DocumentReferenceStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DocumentReferenceStatusBuilder] from JSON.
  factory DocumentReferenceStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentReferenceStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DocumentReferenceStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DocumentReferenceStatusBuilder
  final DocumentReferenceStatusBuilderEnum? valueEnum;

  /// current
  static DocumentReferenceStatusBuilder current =
      DocumentReferenceStatusBuilder._(
    valueString: 'current',
    valueEnum: DocumentReferenceStatusBuilderEnum.current,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-reference-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Current',
    ),
  );

  /// superseded
  static DocumentReferenceStatusBuilder superseded =
      DocumentReferenceStatusBuilder._(
    valueString: 'superseded',
    valueEnum: DocumentReferenceStatusBuilderEnum.superseded,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-reference-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Superseded',
    ),
  );

  /// entered_in_error
  static DocumentReferenceStatusBuilder enteredInError =
      DocumentReferenceStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DocumentReferenceStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-reference-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static DocumentReferenceStatusBuilder elementOnly =
      DocumentReferenceStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DocumentReferenceStatusBuilder> values = [
    current,
    superseded,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  DocumentReferenceStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DocumentReferenceStatusBuilder._(
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
}

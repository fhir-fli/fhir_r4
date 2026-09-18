// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DocumentMode
enum DocumentModeBuilderEnum {
  /// producer
  producer,

  /// consumer
  consumer,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DocumentModeBuilderEnum.producer:
        return 'producer';
      case DocumentModeBuilderEnum.consumer:
        return 'consumer';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DocumentModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DocumentModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DocumentModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'producer':
        return DocumentModeBuilderEnum.producer;
      case 'consumer':
        return DocumentModeBuilderEnum.consumer;
    }
    return null;
  }
}

/// Whether the application produces or consumes documents.
class DocumentModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DocumentModeBuilder._({
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
  factory DocumentModeBuilder(
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
    final valueEnum = DocumentModeBuilderEnum.fromString(
      valueString,
    );
    final known = _known(valueEnum);
    return DocumentModeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system ?? known?.system,
      version: version ?? known?.version,
      display: display ?? known?.display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [DocumentModeBuilder]
  /// with element only
  factory DocumentModeBuilder.empty() =>
      DocumentModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DocumentModeBuilder] from JSON.
  factory DocumentModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentModeBuilder cannot be constructed from JSON.',
      );
    }
    final known = _known(DocumentModeBuilderEnum.fromString(value));
    return DocumentModeBuilder._(
      valueString: value,
      valueEnum: known?.valueEnum,
      system: known?.system,
      version: known?.version,
      display: known?.display,
      element: element,
    );
  }

  /// The constant for [valueEnum], with its system, version and
  /// display; null for a code the value set does not define.
  static DocumentModeBuilder? _known(DocumentModeBuilderEnum? valueEnum) {
    if (valueEnum == null) return null;
    for (final v in values) {
      if (v.valueEnum == valueEnum) return v;
    }
    return null;
  }

  ///  An actual enum that can be used for DocumentModeBuilder
  final DocumentModeBuilderEnum? valueEnum;

  /// producer
  static DocumentModeBuilder producer = DocumentModeBuilder._(
    valueString: 'producer',
    valueEnum: DocumentModeBuilderEnum.producer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/document-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Producer',
    ),
  );

  /// consumer
  static DocumentModeBuilder consumer = DocumentModeBuilder._(
    valueString: 'consumer',
    valueEnum: DocumentModeBuilderEnum.consumer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/document-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Consumer',
    ),
  );

  /// For instances where an Element is present but not value
  static DocumentModeBuilder elementOnly = DocumentModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DocumentModeBuilder> values = [
    producer,
    consumer,
  ];

  /// Returns the enum value with an element attached
  DocumentModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DocumentModeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
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

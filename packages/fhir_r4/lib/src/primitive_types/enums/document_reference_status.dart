part of '../primitive_types.dart';

/// Actual enum for DocumentReferenceStatus
enum DocumentReferenceStatusEnum {
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
      case DocumentReferenceStatusEnum.current:
        return 'current';
      case DocumentReferenceStatusEnum.superseded:
        return 'superseded';
      case DocumentReferenceStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DocumentReferenceStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DocumentReferenceStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DocumentReferenceStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'current':
        return DocumentReferenceStatusEnum.current;
      case 'superseded':
        return DocumentReferenceStatusEnum.superseded;
      case 'entered-in-error':
        return DocumentReferenceStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The status of the document reference.
class DocumentReferenceStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DocumentReferenceStatus._({
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
  factory DocumentReferenceStatus(
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
    final valueEnum = DocumentReferenceStatusEnum.fromString(valueString);
    return DocumentReferenceStatus._(
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

  /// Factory constructor to create [DocumentReferenceStatus]
  /// from JSON.
  factory DocumentReferenceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DocumentReferenceStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentReferenceStatus cannot be constructed from JSON.',
      );
    }
    return DocumentReferenceStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DocumentReferenceStatus
  final DocumentReferenceStatusEnum? valueEnum;

  /// current
  static const DocumentReferenceStatus current = DocumentReferenceStatus._(
    valueString: 'current',
    valueEnum: DocumentReferenceStatusEnum.current,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-reference-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Current',
    ),
  );

  /// superseded
  static const DocumentReferenceStatus superseded = DocumentReferenceStatus._(
    valueString: 'superseded',
    valueEnum: DocumentReferenceStatusEnum.superseded,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-reference-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Superseded',
    ),
  );

  /// entered_in_error
  static const DocumentReferenceStatus enteredInError =
      DocumentReferenceStatus._(
    valueString: 'entered-in-error',
    valueEnum: DocumentReferenceStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-reference-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<DocumentReferenceStatus> values = [
    current,
    superseded,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  DocumentReferenceStatus withElement(Element? newElement) {
    return DocumentReferenceStatus._(
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
  DocumentReferenceStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DocumentReferenceStatusCopyWithImpl<DocumentReferenceStatus> get copyWith =>
      DocumentReferenceStatusCopyWithImpl<DocumentReferenceStatus>(
        this,
        (v) => v as DocumentReferenceStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DocumentReferenceStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DocumentReferenceStatusCopyWithImpl(super._value, super._then);

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
      DocumentReferenceStatus(
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

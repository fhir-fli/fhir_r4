// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for OperationKind
enum OperationKindEnum {
  /// operation
  operation,

  /// query
  query,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OperationKindEnum.operation:
        return 'operation';
      case OperationKindEnum.query:
        return 'query';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OperationKindEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return OperationKindEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OperationKindEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'operation':
        return OperationKindEnum.operation;
      case 'query':
        return OperationKindEnum.query;
    }
    return null;
  }
}

/// Whether an operation is a normal operation or a query.
class OperationKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const OperationKind._({
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
  factory OperationKind(
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
    final valueEnum = OperationKindEnum.fromString(valueString);
    return OperationKind._(
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

  /// Factory constructor to create [OperationKind]
  /// from JSON.
  factory OperationKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = OperationKindEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKind._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationKind cannot be constructed from JSON.',
      );
    }
    return OperationKind._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for OperationKind
  final OperationKindEnum? valueEnum;

  /// operation
  static const OperationKind operation = OperationKind._(
    valueString: 'operation',
    valueEnum: OperationKindEnum.operation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Operation',
    ),
  );

  /// query
  static const OperationKind query = OperationKind._(
    valueString: 'query',
    valueEnum: OperationKindEnum.query,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Query',
    ),
  );

  /// List of all enum-like values
  static final List<OperationKind> values = [
    operation,
    query,
  ];

  /// Returns the enum value with an element attached
  OperationKind withElement(Element? newElement) {
    return OperationKind._(
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
  OperationKind clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  OperationKindCopyWithImpl<OperationKind> get copyWith =>
      OperationKindCopyWithImpl<OperationKind>(
        this,
        (v) => v as OperationKind,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class OperationKindCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  OperationKindCopyWithImpl(super._value, super._then);

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
      OperationKind(
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

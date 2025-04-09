// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ListStatus
enum ListStatusEnum {
  /// current
  current,

  /// retired
  retired,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ListStatusEnum.current:
        return 'current';
      case ListStatusEnum.retired:
        return 'retired';
      case ListStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ListStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ListStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ListStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'current':
        return ListStatusEnum.current;
      case 'retired':
        return ListStatusEnum.retired;
      case 'entered-in-error':
        return ListStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The current state of the list.
class ListStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ListStatus._({
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
  factory ListStatus(
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
    final valueEnum = ListStatusEnum.fromString(valueString);
    return ListStatus._(
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

  /// Factory constructor to create [ListStatus]
  /// from JSON.
  factory ListStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ListStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListStatus cannot be constructed from JSON.',
      );
    }
    return ListStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ListStatus
  final ListStatusEnum? valueEnum;

  /// current
  static const ListStatus current = ListStatus._(
    valueString: 'current',
    valueEnum: ListStatusEnum.current,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Current',
    ),
  );

  /// retired
  static const ListStatus retired = ListStatus._(
    valueString: 'retired',
    valueEnum: ListStatusEnum.retired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Retired',
    ),
  );

  /// entered_in_error
  static const ListStatus enteredInError = ListStatus._(
    valueString: 'entered-in-error',
    valueEnum: ListStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered In Error',
    ),
  );

  /// List of all enum-like values
  static final List<ListStatus> values = [
    current,
    retired,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  ListStatus withElement(Element? newElement) {
    return ListStatus._(
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
  ListStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ListStatusCopyWithImpl<ListStatus> get copyWith =>
      ListStatusCopyWithImpl<ListStatus>(
        this,
        (v) => v as ListStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ListStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ListStatusCopyWithImpl(super._value, super._then);

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
      ListStatus(
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

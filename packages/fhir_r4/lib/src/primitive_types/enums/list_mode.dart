// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ListMode
enum ListModeEnum {
  /// working
  working,

  /// snapshot
  snapshot,

  /// changes
  changes,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ListModeEnum.working:
        return 'working';
      case ListModeEnum.snapshot:
        return 'snapshot';
      case ListModeEnum.changes:
        return 'changes';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ListModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ListModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ListModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'working':
        return ListModeEnum.working;
      case 'snapshot':
        return ListModeEnum.snapshot;
      case 'changes':
        return ListModeEnum.changes;
    }
    return null;
  }
}

/// The processing mode that applies to this list.
class ListMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ListMode._({
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
  factory ListMode(
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
    final valueEnum = ListModeEnum.fromString(valueString);
    return ListMode._(
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

  /// Factory constructor to create [ListMode]
  /// from JSON.
  factory ListMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ListModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListMode cannot be constructed from JSON.',
      );
    }
    return ListMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ListMode
  final ListModeEnum? valueEnum;

  /// working
  static const ListMode working = ListMode._(
    valueString: 'working',
    valueEnum: ListModeEnum.working,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Working List',
    ),
  );

  /// snapshot
  static const ListMode snapshot = ListMode._(
    valueString: 'snapshot',
    valueEnum: ListModeEnum.snapshot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Snapshot List',
    ),
  );

  /// changes
  static const ListMode changes = ListMode._(
    valueString: 'changes',
    valueEnum: ListModeEnum.changes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Change List',
    ),
  );

  /// List of all enum-like values
  static final List<ListMode> values = [
    working,
    snapshot,
    changes,
  ];

  /// Returns the enum value with an element attached
  ListMode withElement(Element? newElement) {
    return ListMode._(
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
  ListMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ListModeCopyWithImpl<ListMode> get copyWith => ListModeCopyWithImpl<ListMode>(
        this,
        (v) => v as ListMode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ListModeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ListModeCopyWithImpl(super._value, super._then);

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
      ListMode(
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

// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AuditEventAction
enum AuditEventActionEnum {
  /// C
  c,

  /// R
  r,

  /// U
  u,

  /// D
  d,

  /// E
  e,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AuditEventActionEnum.c:
        return 'C';
      case AuditEventActionEnum.r:
        return 'R';
      case AuditEventActionEnum.u:
        return 'U';
      case AuditEventActionEnum.d:
        return 'D';
      case AuditEventActionEnum.e:
        return 'E';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventActionEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventActionEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventActionEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'C':
        return AuditEventActionEnum.c;
      case 'R':
        return AuditEventActionEnum.r;
      case 'U':
        return AuditEventActionEnum.u;
      case 'D':
        return AuditEventActionEnum.d;
      case 'E':
        return AuditEventActionEnum.e;
    }
    return null;
  }
}

/// Indicator for type of action performed during the event that generated
/// the event.
class AuditEventAction extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AuditEventAction._({
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
  factory AuditEventAction(
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
    final valueEnum = AuditEventActionEnum.fromString(valueString);
    return AuditEventAction._(
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

  /// Factory constructor to create [AuditEventAction]
  /// from JSON.
  factory AuditEventAction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AuditEventActionEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAction._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventAction cannot be constructed from JSON.',
      );
    }
    return AuditEventAction._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AuditEventAction
  final AuditEventActionEnum? valueEnum;

  /// C
  static const AuditEventAction c = AuditEventAction._(
    valueString: 'C',
    valueEnum: AuditEventActionEnum.c,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Create',
    ),
  );

  /// R
  static const AuditEventAction r = AuditEventAction._(
    valueString: 'R',
    valueEnum: AuditEventActionEnum.r,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Read/View/Print',
    ),
  );

  /// U
  static const AuditEventAction u = AuditEventAction._(
    valueString: 'U',
    valueEnum: AuditEventActionEnum.u,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Update',
    ),
  );

  /// D
  static const AuditEventAction d = AuditEventAction._(
    valueString: 'D',
    valueEnum: AuditEventActionEnum.d,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Delete',
    ),
  );

  /// E
  static const AuditEventAction e = AuditEventAction._(
    valueString: 'E',
    valueEnum: AuditEventActionEnum.e,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Execute',
    ),
  );

  /// List of all enum-like values
  static final List<AuditEventAction> values = [
    c,
    r,
    u,
    d,
    e,
  ];

  /// Returns the enum value with an element attached
  AuditEventAction withElement(Element? newElement) {
    return AuditEventAction._(
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
  AuditEventAction clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AuditEventActionCopyWithImpl<AuditEventAction> get copyWith =>
      AuditEventActionCopyWithImpl<AuditEventAction>(
        this,
        (v) => v as AuditEventAction,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AuditEventActionCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AuditEventActionCopyWithImpl(super._value, super._then);

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
      AuditEventAction(
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

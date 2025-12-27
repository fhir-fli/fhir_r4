part of '../primitive_types.dart';

/// Actual enum for ProvenanceEntityRole
enum ProvenanceEntityRoleEnum {
  /// derivation
  derivation,

  /// revision
  revision,

  /// quotation
  quotation,

  /// source
  source,

  /// removal
  removal,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ProvenanceEntityRoleEnum.derivation:
        return 'derivation';
      case ProvenanceEntityRoleEnum.revision:
        return 'revision';
      case ProvenanceEntityRoleEnum.quotation:
        return 'quotation';
      case ProvenanceEntityRoleEnum.source:
        return 'source';
      case ProvenanceEntityRoleEnum.removal:
        return 'removal';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ProvenanceEntityRoleEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ProvenanceEntityRoleEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ProvenanceEntityRoleEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'derivation':
        return ProvenanceEntityRoleEnum.derivation;
      case 'revision':
        return ProvenanceEntityRoleEnum.revision;
      case 'quotation':
        return ProvenanceEntityRoleEnum.quotation;
      case 'source':
        return ProvenanceEntityRoleEnum.source;
      case 'removal':
        return ProvenanceEntityRoleEnum.removal;
    }
    return null;
  }
}

/// How an entity was used in an activity.
class ProvenanceEntityRole extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ProvenanceEntityRole._({
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
  factory ProvenanceEntityRole(
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
    final valueEnum = ProvenanceEntityRoleEnum.fromString(valueString);
    return ProvenanceEntityRole._(
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

  /// Factory constructor to create [ProvenanceEntityRole]
  /// from JSON.
  factory ProvenanceEntityRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ProvenanceEntityRoleEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRole._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProvenanceEntityRole cannot be constructed from JSON.',
      );
    }
    return ProvenanceEntityRole._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ProvenanceEntityRole
  final ProvenanceEntityRoleEnum? valueEnum;

  /// derivation
  static const ProvenanceEntityRole derivation = ProvenanceEntityRole._(
    valueString: 'derivation',
    valueEnum: ProvenanceEntityRoleEnum.derivation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Derivation',
    ),
  );

  /// revision
  static const ProvenanceEntityRole revision = ProvenanceEntityRole._(
    valueString: 'revision',
    valueEnum: ProvenanceEntityRoleEnum.revision,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Revision',
    ),
  );

  /// quotation
  static const ProvenanceEntityRole quotation = ProvenanceEntityRole._(
    valueString: 'quotation',
    valueEnum: ProvenanceEntityRoleEnum.quotation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Quotation',
    ),
  );

  /// source
  static const ProvenanceEntityRole source = ProvenanceEntityRole._(
    valueString: 'source',
    valueEnum: ProvenanceEntityRoleEnum.source,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Source',
    ),
  );

  /// removal
  static const ProvenanceEntityRole removal = ProvenanceEntityRole._(
    valueString: 'removal',
    valueEnum: ProvenanceEntityRoleEnum.removal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Removal',
    ),
  );

  /// List of all enum-like values
  static final List<ProvenanceEntityRole> values = [
    derivation,
    revision,
    quotation,
    source,
    removal,
  ];

  /// Returns the enum value with an element attached
  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole._(
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
  ProvenanceEntityRole clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ProvenanceEntityRoleCopyWithImpl<ProvenanceEntityRole> get copyWith =>
      ProvenanceEntityRoleCopyWithImpl<ProvenanceEntityRole>(
        this,
        (v) => v as ProvenanceEntityRole,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ProvenanceEntityRoleCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ProvenanceEntityRoleCopyWithImpl(super._value, super._then);

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
      ProvenanceEntityRole(
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

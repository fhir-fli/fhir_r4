// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResourceVersionPolicy
enum ResourceVersionPolicyEnum {
  /// no-version
  noVersion,

  /// versioned
  versioned,

  /// versioned-update
  versionedUpdate,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ResourceVersionPolicyEnum.noVersion:
        return 'no-version';
      case ResourceVersionPolicyEnum.versioned:
        return 'versioned';
      case ResourceVersionPolicyEnum.versionedUpdate:
        return 'versioned-update';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResourceVersionPolicyEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ResourceVersionPolicyEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResourceVersionPolicyEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'no-version':
        return ResourceVersionPolicyEnum.noVersion;
      case 'versioned':
        return ResourceVersionPolicyEnum.versioned;
      case 'versioned-update':
        return ResourceVersionPolicyEnum.versionedUpdate;
    }
    return null;
  }
}

/// How the system supports versioning for a resource.
class ResourceVersionPolicy extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ResourceVersionPolicy._({
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
  factory ResourceVersionPolicy(
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
    final valueEnum = ResourceVersionPolicyEnum.fromString(valueString);
    return ResourceVersionPolicy._(
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

  /// Factory constructor to create [ResourceVersionPolicy]
  /// from JSON.
  factory ResourceVersionPolicy.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ResourceVersionPolicyEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResourceVersionPolicy cannot be constructed from JSON.',
      );
    }
    return ResourceVersionPolicy._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ResourceVersionPolicy
  final ResourceVersionPolicyEnum? valueEnum;

  /// no_version
  static const ResourceVersionPolicy noVersion = ResourceVersionPolicy._(
    valueString: 'no-version',
    valueEnum: ResourceVersionPolicyEnum.noVersion,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/versioning-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'No VersionId Support',
    ),
  );

  /// versioned
  static const ResourceVersionPolicy versioned = ResourceVersionPolicy._(
    valueString: 'versioned',
    valueEnum: ResourceVersionPolicyEnum.versioned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/versioning-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Versioned',
    ),
  );

  /// versioned_update
  static const ResourceVersionPolicy versionedUpdate = ResourceVersionPolicy._(
    valueString: 'versioned-update',
    valueEnum: ResourceVersionPolicyEnum.versionedUpdate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/versioning-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'VersionId tracked fully',
    ),
  );

  /// List of all enum-like values
  static final List<ResourceVersionPolicy> values = [
    noVersion,
    versioned,
    versionedUpdate,
  ];

  /// Returns the enum value with an element attached
  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy._(
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
  ResourceVersionPolicy clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ResourceVersionPolicyCopyWithImpl<ResourceVersionPolicy> get copyWith =>
      ResourceVersionPolicyCopyWithImpl<ResourceVersionPolicy>(
        this,
        (v) => v as ResourceVersionPolicy,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ResourceVersionPolicyCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ResourceVersionPolicyCopyWithImpl(super._value, super._then);

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
      ResourceVersionPolicy(
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

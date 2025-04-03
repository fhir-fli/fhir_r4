// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the purpose of the naming system.
class NamingSystemType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NamingSystemType._({
    required super.valueString,
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
  factory NamingSystemType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return NamingSystemType._(
      valueString: valueString,
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

  /// Create empty [NamingSystemType] with element only
  factory NamingSystemType.empty() => NamingSystemType._(valueString: '');

  /// Factory constructor to create [NamingSystemType] from JSON.
  factory NamingSystemType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemType cannot be constructed from JSON.',
      );
    }
    return NamingSystemType._(
      valueString: value,
      element: element,
    );
  }

  /// codesystem
  static final NamingSystemType codesystem = NamingSystemType._(
    valueString: 'codesystem',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Code System'.toFhirString,
  );

  /// identifier
  static final NamingSystemType identifier = NamingSystemType._(
    valueString: 'identifier',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Identifier'.toFhirString,
  );

  /// root
  static final NamingSystemType root = NamingSystemType._(
    valueString: 'root',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Root'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NamingSystemType elementOnly =
      NamingSystemType._(valueString: '');

  /// List of all enum-like values
  static final List<NamingSystemType> values = [
    codesystem,
    identifier,
    root,
  ];

  /// Clones the current instance
  @override
  NamingSystemType clone() => NamingSystemType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType._(
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

  /// Creates a modified copy with updated properties.
  @override
  NamingSystemType copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for NamingSystemType: $newValue');
    }
    return NamingSystemType._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}

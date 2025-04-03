// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of relationship between reports.
class ReportRelationshipType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ReportRelationshipType._({
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
  factory ReportRelationshipType(
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
    return ReportRelationshipType._(
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

  /// Create empty [ReportRelationshipType] with element only
  factory ReportRelationshipType.empty() =>
      ReportRelationshipType._(valueString: '');

  /// Factory constructor to create [ReportRelationshipType] from JSON.
  factory ReportRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReportRelationshipType cannot be constructed from JSON.',
      );
    }
    return ReportRelationshipType._(
      valueString: value,
      element: element,
    );
  }

  /// replaces
  static final ReportRelationshipType replaces = ReportRelationshipType._(
    valueString: 'replaces',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Replaces'.toFhirString,
  );

  /// amends
  static final ReportRelationshipType amends = ReportRelationshipType._(
    valueString: 'amends',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amends'.toFhirString,
  );

  /// appends
  static final ReportRelationshipType appends = ReportRelationshipType._(
    valueString: 'appends',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appends'.toFhirString,
  );

  /// transforms
  static final ReportRelationshipType transforms = ReportRelationshipType._(
    valueString: 'transforms',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transforms'.toFhirString,
  );

  /// replacedWith
  static final ReportRelationshipType replacedWith = ReportRelationshipType._(
    valueString: 'replacedWith',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Replaced With'.toFhirString,
  );

  /// amendedWith
  static final ReportRelationshipType amendedWith = ReportRelationshipType._(
    valueString: 'amendedWith',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amended With'.toFhirString,
  );

  /// appendedWith
  static final ReportRelationshipType appendedWith = ReportRelationshipType._(
    valueString: 'appendedWith',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appended With'.toFhirString,
  );

  /// transformedWith
  static final ReportRelationshipType transformedWith =
      ReportRelationshipType._(
    valueString: 'transformedWith',
    system: 'http://hl7.org/fhir/ValueSet/report-relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transformed With'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ReportRelationshipType elementOnly =
      ReportRelationshipType._(valueString: '');

  /// List of all enum-like values
  static final List<ReportRelationshipType> values = [
    replaces,
    amends,
    appends,
    transforms,
    replacedWith,
    amendedWith,
    appendedWith,
    transformedWith,
  ];

  /// Clones the current instance
  @override
  ReportRelationshipType clone() => ReportRelationshipType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ReportRelationshipType withElement(Element? newElement) {
    return ReportRelationshipType._(
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
  ReportRelationshipType copyWith({
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
      throw ArgumentError(
          'Invalid input for ReportRelationshipType: $newValue');
    }
    return ReportRelationshipType._(
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

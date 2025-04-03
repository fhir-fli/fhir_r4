// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of contributor.
class ContributorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ContributorType._({
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
  factory ContributorType(
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
    return ContributorType._(
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

  /// Create empty [ContributorType] with element only
  factory ContributorType.empty() => ContributorType._(valueString: '');

  /// Factory constructor to create [ContributorType]
  /// from JSON.
  factory ContributorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContributorType cannot be constructed from JSON.',
      );
    }
    return ContributorType._(
      valueString: value,
      element: element,
    );
  }

  /// author
  static final ContributorType author = ContributorType._(
    valueString: 'author',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Author'.toFhirString,
  );

  /// editor
  static final ContributorType editor = ContributorType._(
    valueString: 'editor',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Editor'.toFhirString,
  );

  /// reviewer
  static final ContributorType reviewer = ContributorType._(
    valueString: 'reviewer',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reviewer'.toFhirString,
  );

  /// endorser
  static final ContributorType endorser = ContributorType._(
    valueString: 'endorser',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Endorser'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ContributorType elementOnly = ContributorType._(valueString: '');

  /// List of all enum-like values
  static final List<ContributorType> values = [
    author,
    editor,
    reviewer,
    endorser,
  ];

  /// Clones the current instance
  @override
  ContributorType clone() => ContributorType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContributorType withElement(Element? newElement) {
    return ContributorType._(
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
  ContributorType copyWith({
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
        'Invalid input for ContributorType: $newValue',
      );
    }
    return ContributorType._(
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

// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type for strand.
class StrandType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  StrandType._({
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
  factory StrandType(
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
    return StrandType._(
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

  /// Create empty [StrandType] with element only
  factory StrandType.empty() => StrandType._(valueString: '');

  /// Factory constructor to create [StrandType] from JSON.
  factory StrandType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StrandType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StrandType cannot be constructed from JSON.',
      );
    }
    return StrandType._(
      valueString: value,
      element: element,
    );
  }

  /// watson
  static final StrandType watson = StrandType._(
    valueString: 'watson',
    system: 'http://hl7.org/fhir/ValueSet/strand-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Watson strand of referenceSeq'.toFhirString,
  );

  /// crick
  static final StrandType crick = StrandType._(
    valueString: 'crick',
    system: 'http://hl7.org/fhir/ValueSet/strand-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Crick strand of referenceSeq'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final StrandType elementOnly = StrandType._(valueString: '');

  /// List of all enum-like values
  static final List<StrandType> values = [
    watson,
    crick,
  ];

  /// Clones the current instance
  @override
  StrandType clone() => StrandType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StrandType withElement(Element? newElement) {
    return StrandType._(
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
  StrandType copyWith({
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
      throw ArgumentError('Invalid input for StrandType: $newValue');
    }
    return StrandType._(
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

// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The processing mode that applies to this list.
class ListMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ListMode._({
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
  factory ListMode(
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
    return ListMode._(
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

  /// Create empty [ListMode] with element only
  factory ListMode.empty() => ListMode._(valueString: '');

  /// Factory constructor to create [ListMode] from JSON.
  factory ListMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListMode cannot be constructed from JSON.',
      );
    }
    return ListMode._(
      valueString: value,
      element: element,
    );
  }

  /// working
  static final ListMode working = ListMode._(
    valueString: 'working',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Working List'.toFhirString,
  );

  /// snapshot
  static final ListMode snapshot = ListMode._(
    valueString: 'snapshot',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Snapshot List'.toFhirString,
  );

  /// changes
  static final ListMode changes = ListMode._(
    valueString: 'changes',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Change List'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ListMode elementOnly = ListMode._(valueString: '');

  /// List of all enum-like values
  static final List<ListMode> values = [
    working,
    snapshot,
    changes,
  ];

  /// Clones the current instance
  @override
  ListMode clone() => ListMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  ListMode copyWith({
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
      throw ArgumentError('Invalid input for ListMode: $newValue');
    }
    return ListMode._(
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

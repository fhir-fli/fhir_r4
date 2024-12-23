// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the type or instance level.
class TypeRestfulInteraction extends FhirCode {
  // Private constructor for internal use (like enum)
  TypeRestfulInteraction._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [TypeRestfulInteraction] from JSON.
  factory TypeRestfulInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteraction.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeRestfulInteraction cannot be constructed from JSON.',
      );
    }
    return TypeRestfulInteraction._(
      value,
      element: element,
    );
  }

  /// read
  static final TypeRestfulInteraction read = TypeRestfulInteraction._(
    'read',
  );

  /// vread
  static final TypeRestfulInteraction vread = TypeRestfulInteraction._(
    'vread',
  );

  /// update
  static final TypeRestfulInteraction update = TypeRestfulInteraction._(
    'update',
  );

  /// patch
  static final TypeRestfulInteraction patch = TypeRestfulInteraction._(
    'patch',
  );

  /// delete
  static final TypeRestfulInteraction delete = TypeRestfulInteraction._(
    'delete',
  );

  /// history
  static final TypeRestfulInteraction history = TypeRestfulInteraction._(
    'history',
  );

  /// history_instance
  static final TypeRestfulInteraction history_instance =
      TypeRestfulInteraction._(
    'history-instance',
  );

  /// history_type
  static final TypeRestfulInteraction history_type = TypeRestfulInteraction._(
    'history-type',
  );

  /// history_system
  static final TypeRestfulInteraction history_system = TypeRestfulInteraction._(
    'history-system',
  );

  /// create
  static final TypeRestfulInteraction create = TypeRestfulInteraction._(
    'create',
  );

  /// search
  static final TypeRestfulInteraction search = TypeRestfulInteraction._(
    'search',
  );

  /// search_type
  static final TypeRestfulInteraction search_type = TypeRestfulInteraction._(
    'search-type',
  );

  /// search_system
  static final TypeRestfulInteraction search_system = TypeRestfulInteraction._(
    'search-system',
  );

  /// capabilities
  static final TypeRestfulInteraction capabilities = TypeRestfulInteraction._(
    'capabilities',
  );

  /// transaction
  static final TypeRestfulInteraction transaction = TypeRestfulInteraction._(
    'transaction',
  );

  /// batch
  static final TypeRestfulInteraction batch = TypeRestfulInteraction._(
    'batch',
  );

  /// operation
  static final TypeRestfulInteraction operation = TypeRestfulInteraction._(
    'operation',
  );

  /// For instances where an Element is present but not value

  static final TypeRestfulInteraction elementOnly =
      TypeRestfulInteraction._('');

  /// List of all enum-like values
  static final List<TypeRestfulInteraction> values = [
    read,
    vread,
    update,
    patch,
    delete,
    history,
    history_instance,
    history_type,
    history_system,
    create,
    search,
    search_type,
    search_system,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Clones the current instance
  @override
  TypeRestfulInteraction clone() => TypeRestfulInteraction._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TypeRestfulInteraction withElement(Element? newElement) {
    return TypeRestfulInteraction._(
      value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TypeRestfulInteraction copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TypeRestfulInteraction._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }
}

// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for StructureMapTransform
enum StructureMapTransformBuilderEnum {
  /// create
  create,

  /// copy
  copy_,

  /// truncate
  truncate,

  /// escape
  escape,

  /// cast
  cast,

  /// append
  append,

  /// translate
  translate,

  /// reference
  reference,

  /// dateOp
  dateOp,

  /// uuid
  uuid,

  /// pointer
  pointer,

  /// evaluate
  evaluate,

  /// cc
  cc,

  /// c
  c,

  /// qty
  qty,

  /// id
  id_,

  /// cp
  cp,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapTransformBuilderEnum.create:
        return 'create';
      case StructureMapTransformBuilderEnum.copy_:
        return 'copy';
      case StructureMapTransformBuilderEnum.truncate:
        return 'truncate';
      case StructureMapTransformBuilderEnum.escape:
        return 'escape';
      case StructureMapTransformBuilderEnum.cast:
        return 'cast';
      case StructureMapTransformBuilderEnum.append:
        return 'append';
      case StructureMapTransformBuilderEnum.translate:
        return 'translate';
      case StructureMapTransformBuilderEnum.reference:
        return 'reference';
      case StructureMapTransformBuilderEnum.dateOp:
        return 'dateOp';
      case StructureMapTransformBuilderEnum.uuid:
        return 'uuid';
      case StructureMapTransformBuilderEnum.pointer:
        return 'pointer';
      case StructureMapTransformBuilderEnum.evaluate:
        return 'evaluate';
      case StructureMapTransformBuilderEnum.cc:
        return 'cc';
      case StructureMapTransformBuilderEnum.c:
        return 'c';
      case StructureMapTransformBuilderEnum.qty:
        return 'qty';
      case StructureMapTransformBuilderEnum.id_:
        return 'id';
      case StructureMapTransformBuilderEnum.cp:
        return 'cp';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapTransformBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapTransformBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapTransformBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'create':
        return StructureMapTransformBuilderEnum.create;
      case 'copy':
        return StructureMapTransformBuilderEnum.copy_;
      case 'truncate':
        return StructureMapTransformBuilderEnum.truncate;
      case 'escape':
        return StructureMapTransformBuilderEnum.escape;
      case 'cast':
        return StructureMapTransformBuilderEnum.cast;
      case 'append':
        return StructureMapTransformBuilderEnum.append;
      case 'translate':
        return StructureMapTransformBuilderEnum.translate;
      case 'reference':
        return StructureMapTransformBuilderEnum.reference;
      case 'dateOp':
        return StructureMapTransformBuilderEnum.dateOp;
      case 'uuid':
        return StructureMapTransformBuilderEnum.uuid;
      case 'pointer':
        return StructureMapTransformBuilderEnum.pointer;
      case 'evaluate':
        return StructureMapTransformBuilderEnum.evaluate;
      case 'cc':
        return StructureMapTransformBuilderEnum.cc;
      case 'c':
        return StructureMapTransformBuilderEnum.c;
      case 'qty':
        return StructureMapTransformBuilderEnum.qty;
      case 'id':
        return StructureMapTransformBuilderEnum.id_;
      case 'cp':
        return StructureMapTransformBuilderEnum.cp;
    }
    return null;
  }
}

/// How data is copied/created.
class StructureMapTransformBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapTransformBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory StructureMapTransformBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = StructureMapTransformBuilderEnum.fromString(
      valueString,
    );
    return StructureMapTransformBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [StructureMapTransformBuilder]
  /// with element only
  factory StructureMapTransformBuilder.empty() =>
      StructureMapTransformBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureMapTransformBuilder] from JSON.
  factory StructureMapTransformBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransformBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTransformBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapTransformBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StructureMapTransformBuilder
  final StructureMapTransformBuilderEnum? valueEnum;

  /// create
  static StructureMapTransformBuilder create = StructureMapTransformBuilder._(
    valueString: 'create',
    valueEnum: StructureMapTransformBuilderEnum.create,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'create',
    ),
  );

  /// copy
  static StructureMapTransformBuilder copy_ = StructureMapTransformBuilder._(
    valueString: 'copy',
    valueEnum: StructureMapTransformBuilderEnum.copy_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'copy',
    ),
  );

  /// truncate
  static StructureMapTransformBuilder truncate = StructureMapTransformBuilder._(
    valueString: 'truncate',
    valueEnum: StructureMapTransformBuilderEnum.truncate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'truncate',
    ),
  );

  /// escape
  static StructureMapTransformBuilder escape = StructureMapTransformBuilder._(
    valueString: 'escape',
    valueEnum: StructureMapTransformBuilderEnum.escape,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'escape',
    ),
  );

  /// cast
  static StructureMapTransformBuilder cast = StructureMapTransformBuilder._(
    valueString: 'cast',
    valueEnum: StructureMapTransformBuilderEnum.cast,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'cast',
    ),
  );

  /// append
  static StructureMapTransformBuilder append = StructureMapTransformBuilder._(
    valueString: 'append',
    valueEnum: StructureMapTransformBuilderEnum.append,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'append',
    ),
  );

  /// translate
  static StructureMapTransformBuilder translate =
      StructureMapTransformBuilder._(
    valueString: 'translate',
    valueEnum: StructureMapTransformBuilderEnum.translate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'translate',
    ),
  );

  /// reference
  static StructureMapTransformBuilder reference =
      StructureMapTransformBuilder._(
    valueString: 'reference',
    valueEnum: StructureMapTransformBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'reference',
    ),
  );

  /// dateOp
  static StructureMapTransformBuilder dateOp = StructureMapTransformBuilder._(
    valueString: 'dateOp',
    valueEnum: StructureMapTransformBuilderEnum.dateOp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'dateOp',
    ),
  );

  /// uuid
  static StructureMapTransformBuilder uuid = StructureMapTransformBuilder._(
    valueString: 'uuid',
    valueEnum: StructureMapTransformBuilderEnum.uuid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'uuid',
    ),
  );

  /// pointer
  static StructureMapTransformBuilder pointer = StructureMapTransformBuilder._(
    valueString: 'pointer',
    valueEnum: StructureMapTransformBuilderEnum.pointer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'pointer',
    ),
  );

  /// evaluate
  static StructureMapTransformBuilder evaluate = StructureMapTransformBuilder._(
    valueString: 'evaluate',
    valueEnum: StructureMapTransformBuilderEnum.evaluate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'evaluate',
    ),
  );

  /// cc
  static StructureMapTransformBuilder cc = StructureMapTransformBuilder._(
    valueString: 'cc',
    valueEnum: StructureMapTransformBuilderEnum.cc,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'cc',
    ),
  );

  /// c
  static StructureMapTransformBuilder c = StructureMapTransformBuilder._(
    valueString: 'c',
    valueEnum: StructureMapTransformBuilderEnum.c,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'c',
    ),
  );

  /// qty
  static StructureMapTransformBuilder qty = StructureMapTransformBuilder._(
    valueString: 'qty',
    valueEnum: StructureMapTransformBuilderEnum.qty,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'qty',
    ),
  );

  /// id
  static StructureMapTransformBuilder id_ = StructureMapTransformBuilder._(
    valueString: 'id',
    valueEnum: StructureMapTransformBuilderEnum.id_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'id',
    ),
  );

  /// cp
  static StructureMapTransformBuilder cp = StructureMapTransformBuilder._(
    valueString: 'cp',
    valueEnum: StructureMapTransformBuilderEnum.cp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'cp',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureMapTransformBuilder elementOnly =
      StructureMapTransformBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureMapTransformBuilder> values = [
    create,
    copy_,
    truncate,
    escape,
    cast,
    append,
    translate,
    reference,
    dateOp,
    uuid,
    pointer,
    evaluate,
    cc,
    c,
    qty,
    id_,
    cp,
  ];

  /// Returns the enum value with an element attached
  StructureMapTransformBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureMapTransformBuilder._(
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
}

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Element within ClassInfoElement type, deprecated.
///
/// The [ClassInfoElement] type specifies an element deprecated in favor of
/// the elementTypeSpecifier. It provides an option to define typeSpecifier
/// and elementTypeSpecifier elements along with attributes.
@Deprecated(
    'This element is deprecated. New implementations should use the new elementTypeSpecifier element')
class ClassInfoElement {
  // Binding information
  final BindingInfo? binding;

  // Optional attribute - Additional markdown comments on the element
  final String? comment;

  // Constraints list
  final List<ConstraintInfo> constraints = [];

  // Optional attribute - Detailed markdown definition of the element
  final String? definition;

  // Optional attribute - Short description of the element
  final String? description;

  // Optional attribute - Element type
  final String? elementType;

  // Element type specifier
  final TypeSpecifierModel? elementTypeSpecifier;

  // Optional attribute - User-friendly label for the element
  final String? label;

  // Optional attribute - Maximum cardinality of the element
  final String? max;

  // Optional attribute - Minimum cardinality of the element
  final int? min;

  // Optional attribute - Whether the element is relevant for the use case
  final bool? mustSupport;

  // Required attribute - Name of the element
  final String name;

  // Optional attribute - Whether the list-valued element is one-based
  final bool? oneBased;

  // Optional attribute - Whether the element is prohibited
  final bool? prohibited;

  // Optional attribute - Access path for the element
  final String? target;

  // Optional attribute - Deprecated type attribute
  final String? type;

  // Deprecated element
  final TypeSpecifierModel? typeSpecifier;

  ClassInfoElement({
    required this.name,
    this.typeSpecifier,
    this.elementTypeSpecifier,
    this.binding,
    this.type,
    this.elementType,
    this.prohibited,
    this.oneBased,
    this.target,
    this.label,
    this.description,
    this.definition,
    this.comment,
    this.min,
    this.max,
    this.mustSupport,
  });

  factory ClassInfoElement.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final typeSpecifier = json['typeSpecifier'] != null
        ? TypeSpecifierModel.fromJson(json['typeSpecifier'])
        : null;
    final elementTypeSpecifier = json['elementTypeSpecifier'] != null
        ? TypeSpecifierModel.fromJson(json['elementTypeSpecifier'])
        : null;
    final binding =
        json['binding'] != null ? BindingInfo.fromJson(json['binding']) : null;
    final type = json['type'] as String?;
    final elementType = json['elementType'] as String?;
    final prohibited = json['prohibited'] is bool
        ? json['prohibited'] as bool
        : json['prohibited'] is String
            ? json['prohibited'] == 'true'
                ? true
                : json['prohibited'] == 'false'
                    ? false
                    : null
            : null;
    final oneBased = json['oneBased'] as bool?;
    final target = json['target'] as String?;
    final label = json['label'] as String?;
    final description = json['description'] as String?;
    final definition = json['definition'] as String?;
    final comment = json['comment'] as String?;
    final min = json['min'] as int?;
    final max = json['max'] as String?;
    final mustSupport = json['mustSupport'] is bool
        ? json['mustSupport'] as bool
        : json['mustSupport'] is String
            ? json['mustSupport'] == 'true'
                ? true
                : json['mustSupport'] == 'false'
                    ? false
                    : null
            : null;

    return ClassInfoElement(
      name: name,
      typeSpecifier: typeSpecifier,
      elementTypeSpecifier: elementTypeSpecifier,
      binding: binding,
      type: type,
      elementType: elementType,
      prohibited: prohibited,
      oneBased: oneBased,
      target: target,
      label: label,
      description: description,
      definition: definition,
      comment: comment,
      min: min,
      max: max,
      mustSupport: mustSupport,
    );
  }

  @override
  String toString() {
    return 'ClassInfoElement{name: $name, typeSpecifier: $typeSpecifier, elementTypeSpecifier: $elementTypeSpecifier, binding: $binding, constraints: $constraints, type: $type, elementType: $elementType, prohibited: $prohibited, oneBased: $oneBased, target: $target, label: $label, description: $description, definition: $definition, comment: $comment, min: $min, max: $max, mustSupport: $mustSupport}';
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        if (typeSpecifier != null) 'typeSpecifier': typeSpecifier!.toJson(),
        if (elementTypeSpecifier != null)
          'elementTypeSpecifier': elementTypeSpecifier!.toJson(),
        if (binding != null) 'binding': binding!.toJson(),
        if (type != null) 'type': type,
        if (elementType != null) 'elementType': elementType,
        if (prohibited != null) 'prohibited': prohibited,
        if (oneBased != null) 'oneBased': oneBased,
        if (target != null) 'target': target,
        if (label != null) 'label': label,
        if (description != null) 'description': description,
        if (definition != null) 'definition': definition,
        if (comment != null) 'comment': comment,
        if (min != null) 'min': min,
        if (max != null) 'max': max,
        if (mustSupport != null) 'mustSupport': mustSupport,
      };

  void addConstraint(ConstraintInfo constraint) {
    constraints.add(constraint);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'element_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ElementDefinitionCopyWith<T> extends $BackboneTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    List<PropertyRepresentation>? representation,
    FhirString? sliceName,
    FhirBoolean? sliceIsConstraining,
    FhirString? label,
    List<Coding>? code,
    ElementDefinitionSlicing? slicing,
    FhirString? short,
    FhirMarkdown? definition,
    FhirMarkdown? comment,
    FhirMarkdown? requirements,
    List<FhirString>? alias,
    FhirUnsignedInt? min,
    FhirString? max,
    ElementDefinitionBase? base,
    FhirUri? contentReference,
    List<ElementDefinitionType>? type,
    FhirBase64Binary? defaultValueX,
    FhirMarkdown? meaningWhenMissing,
    FhirString? orderMeaning,
    FhirBase64Binary? fixedX,
    FhirBase64Binary? patternX,
    List<ElementDefinitionExample>? example,
    FhirDate? minValueX,
    FhirDate? maxValueX,
    FhirInteger? maxLength,
    List<FhirId>? condition,
    List<ElementDefinitionConstraint>? constraint,
    FhirBoolean? mustSupport,
    FhirBoolean? isModifier,
    FhirString? isModifierReason,
    FhirBoolean? isSummary,
    ElementDefinitionBinding? binding,
    List<ElementDefinitionMapping>? mapping,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionCopyWithImpl<T>
    implements $ElementDefinitionCopyWith<T> {
  final ElementDefinition _value;
  final T Function(ElementDefinition) _then;

  _$ElementDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? path = fhirSentinel,
    Object? representation = fhirSentinel,
    Object? sliceName = fhirSentinel,
    Object? sliceIsConstraining = fhirSentinel,
    Object? label = fhirSentinel,
    Object? code = fhirSentinel,
    Object? slicing = fhirSentinel,
    Object? short = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? requirements = fhirSentinel,
    Object? alias = fhirSentinel,
    Object? min = fhirSentinel,
    Object? max = fhirSentinel,
    Object? base = fhirSentinel,
    Object? contentReference = fhirSentinel,
    Object? type = fhirSentinel,
    Object? defaultValueX = fhirSentinel,
    Object? meaningWhenMissing = fhirSentinel,
    Object? orderMeaning = fhirSentinel,
    Object? fixedX = fhirSentinel,
    Object? patternX = fhirSentinel,
    Object? example = fhirSentinel,
    Object? minValueX = fhirSentinel,
    Object? maxValueX = fhirSentinel,
    Object? maxLength = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? constraint = fhirSentinel,
    Object? mustSupport = fhirSentinel,
    Object? isModifier = fhirSentinel,
    Object? isModifierReason = fhirSentinel,
    Object? isSummary = fhirSentinel,
    Object? binding = fhirSentinel,
    Object? mapping = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        path: identical(path, fhirSentinel)
            ? _value.path
            : (path as FhirString?) ?? _value.path,
        representation: identical(representation, fhirSentinel)
            ? _value.representation
            : representation as List<PropertyRepresentation>?,
        sliceName: identical(sliceName, fhirSentinel)
            ? _value.sliceName
            : sliceName as FhirString?,
        sliceIsConstraining: identical(sliceIsConstraining, fhirSentinel)
            ? _value.sliceIsConstraining
            : sliceIsConstraining as FhirBoolean?,
        label: identical(label, fhirSentinel)
            ? _value.label
            : label as FhirString?,
        code:
            identical(code, fhirSentinel) ? _value.code : code as List<Coding>?,
        slicing: identical(slicing, fhirSentinel)
            ? _value.slicing
            : slicing as ElementDefinitionSlicing?,
        short: identical(short, fhirSentinel)
            ? _value.short
            : short as FhirString?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as FhirMarkdown?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirMarkdown?,
        requirements: identical(requirements, fhirSentinel)
            ? _value.requirements
            : requirements as FhirMarkdown?,
        alias: identical(alias, fhirSentinel)
            ? _value.alias
            : alias as List<FhirString>?,
        min:
            identical(min, fhirSentinel) ? _value.min : min as FhirUnsignedInt?,
        max: identical(max, fhirSentinel) ? _value.max : max as FhirString?,
        base: identical(base, fhirSentinel)
            ? _value.base
            : base as ElementDefinitionBase?,
        contentReference: identical(contentReference, fhirSentinel)
            ? _value.contentReference
            : contentReference as FhirUri?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<ElementDefinitionType>?,
        defaultValueX: identical(defaultValueX, fhirSentinel)
            ? _value.defaultValueX
            : defaultValueX as FhirBase64Binary?,
        meaningWhenMissing: identical(meaningWhenMissing, fhirSentinel)
            ? _value.meaningWhenMissing
            : meaningWhenMissing as FhirMarkdown?,
        orderMeaning: identical(orderMeaning, fhirSentinel)
            ? _value.orderMeaning
            : orderMeaning as FhirString?,
        fixedX: identical(fixedX, fhirSentinel)
            ? _value.fixedX
            : fixedX as FhirBase64Binary?,
        patternX: identical(patternX, fhirSentinel)
            ? _value.patternX
            : patternX as FhirBase64Binary?,
        example: identical(example, fhirSentinel)
            ? _value.example
            : example as List<ElementDefinitionExample>?,
        minValueX: identical(minValueX, fhirSentinel)
            ? _value.minValueX
            : minValueX as FhirDate?,
        maxValueX: identical(maxValueX, fhirSentinel)
            ? _value.maxValueX
            : maxValueX as FhirDate?,
        maxLength: identical(maxLength, fhirSentinel)
            ? _value.maxLength
            : maxLength as FhirInteger?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<FhirId>?,
        constraint: identical(constraint, fhirSentinel)
            ? _value.constraint
            : constraint as List<ElementDefinitionConstraint>?,
        mustSupport: identical(mustSupport, fhirSentinel)
            ? _value.mustSupport
            : mustSupport as FhirBoolean?,
        isModifier: identical(isModifier, fhirSentinel)
            ? _value.isModifier
            : isModifier as FhirBoolean?,
        isModifierReason: identical(isModifierReason, fhirSentinel)
            ? _value.isModifierReason
            : isModifierReason as FhirString?,
        isSummary: identical(isSummary, fhirSentinel)
            ? _value.isSummary
            : isSummary as FhirBoolean?,
        binding: identical(binding, fhirSentinel)
            ? _value.binding
            : binding as ElementDefinitionBinding?,
        mapping: identical(mapping, fhirSentinel)
            ? _value.mapping
            : mapping as List<ElementDefinitionMapping>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionCopyWithExtension on ElementDefinition {
  $ElementDefinitionCopyWith<ElementDefinition> get copyWith =>
      _$ElementDefinitionCopyWithImpl<ElementDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ElementDefinitionSlicingCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<ElementDefinitionDiscriminator>? discriminator,
    FhirString? description,
    FhirBoolean? ordered,
    SlicingRules? rules,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionSlicingCopyWithImpl<T>
    implements $ElementDefinitionSlicingCopyWith<T> {
  final ElementDefinitionSlicing _value;
  final T Function(ElementDefinitionSlicing) _then;

  _$ElementDefinitionSlicingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? discriminator = fhirSentinel,
    Object? description = fhirSentinel,
    Object? ordered = fhirSentinel,
    Object? rules = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionSlicing(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        discriminator: identical(discriminator, fhirSentinel)
            ? _value.discriminator
            : discriminator as List<ElementDefinitionDiscriminator>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        ordered: identical(ordered, fhirSentinel)
            ? _value.ordered
            : ordered as FhirBoolean?,
        rules: identical(rules, fhirSentinel)
            ? _value.rules
            : (rules as SlicingRules?) ?? _value.rules,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionSlicingCopyWithExtension
    on ElementDefinitionSlicing {
  $ElementDefinitionSlicingCopyWith<ElementDefinitionSlicing> get copyWith =>
      _$ElementDefinitionSlicingCopyWithImpl<ElementDefinitionSlicing>(
        this,
        (value) => value,
      );
}

abstract class $ElementDefinitionDiscriminatorCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    DiscriminatorType? type,
    FhirString? path,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionDiscriminatorCopyWithImpl<T>
    implements $ElementDefinitionDiscriminatorCopyWith<T> {
  final ElementDefinitionDiscriminator _value;
  final T Function(ElementDefinitionDiscriminator) _then;

  _$ElementDefinitionDiscriminatorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? path = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionDiscriminator(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as DiscriminatorType?) ?? _value.type,
        path: identical(path, fhirSentinel)
            ? _value.path
            : (path as FhirString?) ?? _value.path,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionDiscriminatorCopyWithExtension
    on ElementDefinitionDiscriminator {
  $ElementDefinitionDiscriminatorCopyWith<ElementDefinitionDiscriminator>
      get copyWith => _$ElementDefinitionDiscriminatorCopyWithImpl<
              ElementDefinitionDiscriminator>(
            this,
            (value) => value,
          );
}

abstract class $ElementDefinitionBaseCopyWith<T> extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    FhirUnsignedInt? min,
    FhirString? max,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionBaseCopyWithImpl<T>
    implements $ElementDefinitionBaseCopyWith<T> {
  final ElementDefinitionBase _value;
  final T Function(ElementDefinitionBase) _then;

  _$ElementDefinitionBaseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? path = fhirSentinel,
    Object? min = fhirSentinel,
    Object? max = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionBase(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        path: identical(path, fhirSentinel)
            ? _value.path
            : (path as FhirString?) ?? _value.path,
        min: identical(min, fhirSentinel)
            ? _value.min
            : (min as FhirUnsignedInt?) ?? _value.min,
        max: identical(max, fhirSentinel)
            ? _value.max
            : (max as FhirString?) ?? _value.max,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionBaseCopyWithExtension on ElementDefinitionBase {
  $ElementDefinitionBaseCopyWith<ElementDefinitionBase> get copyWith =>
      _$ElementDefinitionBaseCopyWithImpl<ElementDefinitionBase>(
        this,
        (value) => value,
      );
}

abstract class $ElementDefinitionTypeCopyWith<T> extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? code,
    List<FhirCanonical>? profile,
    List<FhirCanonical>? targetProfile,
    List<AggregationMode>? aggregation,
    ReferenceVersionRules? versioning,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionTypeCopyWithImpl<T>
    implements $ElementDefinitionTypeCopyWith<T> {
  final ElementDefinitionType _value;
  final T Function(ElementDefinitionType) _then;

  _$ElementDefinitionTypeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? code = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? targetProfile = fhirSentinel,
    Object? aggregation = fhirSentinel,
    Object? versioning = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionType(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirUri?) ?? _value.code,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as List<FhirCanonical>?,
        targetProfile: identical(targetProfile, fhirSentinel)
            ? _value.targetProfile
            : targetProfile as List<FhirCanonical>?,
        aggregation: identical(aggregation, fhirSentinel)
            ? _value.aggregation
            : aggregation as List<AggregationMode>?,
        versioning: identical(versioning, fhirSentinel)
            ? _value.versioning
            : versioning as ReferenceVersionRules?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionTypeCopyWithExtension on ElementDefinitionType {
  $ElementDefinitionTypeCopyWith<ElementDefinitionType> get copyWith =>
      _$ElementDefinitionTypeCopyWithImpl<ElementDefinitionType>(
        this,
        (value) => value,
      );
}

abstract class $ElementDefinitionExampleCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? label,
    FhirBase64Binary? valueX,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionExampleCopyWithImpl<T>
    implements $ElementDefinitionExampleCopyWith<T> {
  final ElementDefinitionExample _value;
  final T Function(ElementDefinitionExample) _then;

  _$ElementDefinitionExampleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? label = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionExample(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        label: identical(label, fhirSentinel)
            ? _value.label
            : (label as FhirString?) ?? _value.label,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirBase64Binary?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionExampleCopyWithExtension
    on ElementDefinitionExample {
  $ElementDefinitionExampleCopyWith<ElementDefinitionExample> get copyWith =>
      _$ElementDefinitionExampleCopyWithImpl<ElementDefinitionExample>(
        this,
        (value) => value,
      );
}

abstract class $ElementDefinitionConstraintCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? key,
    FhirString? requirements,
    ConstraintSeverity? severity,
    FhirString? human,
    FhirString? expression,
    FhirString? xpath,
    FhirCanonical? source,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionConstraintCopyWithImpl<T>
    implements $ElementDefinitionConstraintCopyWith<T> {
  final ElementDefinitionConstraint _value;
  final T Function(ElementDefinitionConstraint) _then;

  _$ElementDefinitionConstraintCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? key = fhirSentinel,
    Object? requirements = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? human = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? xpath = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionConstraint(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        key: identical(key, fhirSentinel)
            ? _value.key
            : (key as FhirId?) ?? _value.key,
        requirements: identical(requirements, fhirSentinel)
            ? _value.requirements
            : requirements as FhirString?,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : (severity as ConstraintSeverity?) ?? _value.severity,
        human: identical(human, fhirSentinel)
            ? _value.human
            : (human as FhirString?) ?? _value.human,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirString?,
        xpath: identical(xpath, fhirSentinel)
            ? _value.xpath
            : xpath as FhirString?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionConstraintCopyWithExtension
    on ElementDefinitionConstraint {
  $ElementDefinitionConstraintCopyWith<ElementDefinitionConstraint>
      get copyWith => _$ElementDefinitionConstraintCopyWithImpl<
              ElementDefinitionConstraint>(
            this,
            (value) => value,
          );
}

abstract class $ElementDefinitionBindingCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    BindingStrength? strength,
    FhirString? description,
    FhirCanonical? valueSet,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionBindingCopyWithImpl<T>
    implements $ElementDefinitionBindingCopyWith<T> {
  final ElementDefinitionBinding _value;
  final T Function(ElementDefinitionBinding) _then;

  _$ElementDefinitionBindingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? strength = fhirSentinel,
    Object? description = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionBinding(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        strength: identical(strength, fhirSentinel)
            ? _value.strength
            : (strength as BindingStrength?) ?? _value.strength,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionBindingCopyWithExtension
    on ElementDefinitionBinding {
  $ElementDefinitionBindingCopyWith<ElementDefinitionBinding> get copyWith =>
      _$ElementDefinitionBindingCopyWithImpl<ElementDefinitionBinding>(
        this,
        (value) => value,
      );
}

abstract class $ElementDefinitionMappingCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? identity,
    FhirCode? language,
    FhirString? map,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$ElementDefinitionMappingCopyWithImpl<T>
    implements $ElementDefinitionMappingCopyWith<T> {
  final ElementDefinitionMapping _value;
  final T Function(ElementDefinitionMapping) _then;

  _$ElementDefinitionMappingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? identity = fhirSentinel,
    Object? language = fhirSentinel,
    Object? map = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ElementDefinitionMapping(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        identity: identical(identity, fhirSentinel)
            ? _value.identity
            : (identity as FhirId?) ?? _value.identity,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as FhirCode?,
        map: identical(map, fhirSentinel)
            ? _value.map
            : (map as FhirString?) ?? _value.map,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ElementDefinitionMappingCopyWithExtension
    on ElementDefinitionMapping {
  $ElementDefinitionMappingCopyWith<ElementDefinitionMapping> get copyWith =>
      _$ElementDefinitionMappingCopyWithImpl<ElementDefinitionMapping>(
        this,
        (value) => value,
      );
}

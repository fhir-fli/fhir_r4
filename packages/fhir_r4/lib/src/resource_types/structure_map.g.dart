// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'structure_map.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $StructureMapCopyWith<T> extends $CanonicalResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    List<StructureMapStructure>? structure,
    List<FhirCanonical>? import_,
    List<StructureMapGroup>? group,
    bool? disallowExtensions,
  });
}

class _$StructureMapCopyWithImpl<T> implements $StructureMapCopyWith<T> {
  final StructureMap _value;
  final T Function(StructureMap) _then;

  _$StructureMapCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? url = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? structure = fhirSentinel,
    Object? import_ = fhirSentinel,
    Object? group = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMap(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        url: url as FhirUri? ?? _value.url,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: name as FhirString? ?? _value.name,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: status as PublicationStatus? ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        structure: identical(structure, fhirSentinel)
            ? _value.structure
            : structure as List<StructureMapStructure>?,
        import_: identical(import_, fhirSentinel)
            ? _value.import_
            : import_ as List<FhirCanonical>?,
        group: group as List<StructureMapGroup>? ?? _value.group,
      ),
    );
  }
}

extension StructureMapCopyWithExtension on StructureMap {
  $StructureMapCopyWith<StructureMap> get copyWith =>
      _$StructureMapCopyWithImpl<StructureMap>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapStructureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? url,
    StructureMapModelMode? mode,
    FhirString? alias,
    FhirString? documentation,
    bool? disallowExtensions,
  });
}

class _$StructureMapStructureCopyWithImpl<T>
    implements $StructureMapStructureCopyWith<T> {
  final StructureMapStructure _value;
  final T Function(StructureMapStructure) _then;

  _$StructureMapStructureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? url = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? alias = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapStructure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        url: url as FhirCanonical? ?? _value.url,
        mode: mode as StructureMapModelMode? ?? _value.mode,
        alias: identical(alias, fhirSentinel)
            ? _value.alias
            : alias as FhirString?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapStructureCopyWithExtension on StructureMapStructure {
  $StructureMapStructureCopyWith<StructureMapStructure> get copyWith =>
      _$StructureMapStructureCopyWithImpl<StructureMapStructure>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapGroupCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirId? extends_,
    StructureMapGroupTypeMode? typeMode,
    FhirString? documentation,
    List<StructureMapInput>? input,
    List<StructureMapRule>? rule,
    bool? disallowExtensions,
  });
}

class _$StructureMapGroupCopyWithImpl<T>
    implements $StructureMapGroupCopyWith<T> {
  final StructureMapGroup _value;
  final T Function(StructureMapGroup) _then;

  _$StructureMapGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? extends_ = fhirSentinel,
    Object? typeMode = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? input = fhirSentinel,
    Object? rule = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: name as FhirId? ?? _value.name,
        extends_: identical(extends_, fhirSentinel)
            ? _value.extends_
            : extends_ as FhirId?,
        typeMode: typeMode as StructureMapGroupTypeMode? ?? _value.typeMode,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirString?,
        input: input as List<StructureMapInput>? ?? _value.input,
        rule: rule as List<StructureMapRule>? ?? _value.rule,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapGroupCopyWithExtension on StructureMapGroup {
  $StructureMapGroupCopyWith<StructureMapGroup> get copyWith =>
      _$StructureMapGroupCopyWithImpl<StructureMapGroup>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapInputCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirString? type,
    StructureMapInputMode? mode,
    FhirString? documentation,
    bool? disallowExtensions,
  });
}

class _$StructureMapInputCopyWithImpl<T>
    implements $StructureMapInputCopyWith<T> {
  final StructureMapInput _value;
  final T Function(StructureMapInput) _then;

  _$StructureMapInputCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapInput(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: name as FhirId? ?? _value.name,
        type: identical(type, fhirSentinel) ? _value.type : type as FhirString?,
        mode: mode as StructureMapInputMode? ?? _value.mode,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapInputCopyWithExtension on StructureMapInput {
  $StructureMapInputCopyWith<StructureMapInput> get copyWith =>
      _$StructureMapInputCopyWithImpl<StructureMapInput>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapRuleCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<StructureMapSource>? source,
    List<StructureMapTarget>? target,
    List<StructureMapRule>? rule,
    List<StructureMapDependent>? dependent,
    FhirString? documentation,
    bool? disallowExtensions,
  });
}

class _$StructureMapRuleCopyWithImpl<T>
    implements $StructureMapRuleCopyWith<T> {
  final StructureMapRule _value;
  final T Function(StructureMapRule) _then;

  _$StructureMapRuleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? source = fhirSentinel,
    Object? target = fhirSentinel,
    Object? rule = fhirSentinel,
    Object? dependent = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapRule(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: name as FhirId? ?? _value.name,
        source: source as List<StructureMapSource>? ?? _value.source,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<StructureMapTarget>?,
        rule: identical(rule, fhirSentinel)
            ? _value.rule
            : rule as List<StructureMapRule>?,
        dependent: identical(dependent, fhirSentinel)
            ? _value.dependent
            : dependent as List<StructureMapDependent>?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapRuleCopyWithExtension on StructureMapRule {
  $StructureMapRuleCopyWith<StructureMapRule> get copyWith =>
      _$StructureMapRuleCopyWithImpl<StructureMapRule>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapSourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    FhirInteger? min,
    FhirString? max,
    FhirString? type,
    FhirBase64Binary? defaultValueX,
    FhirString? element,
    StructureMapSourceListMode? listMode,
    FhirId? variable,
    FhirString? condition,
    FhirString? check,
    FhirString? logMessage,
    bool? disallowExtensions,
  });
}

class _$StructureMapSourceCopyWithImpl<T>
    implements $StructureMapSourceCopyWith<T> {
  final StructureMapSource _value;
  final T Function(StructureMapSource) _then;

  _$StructureMapSourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? context = fhirSentinel,
    Object? min = fhirSentinel,
    Object? max = fhirSentinel,
    Object? type = fhirSentinel,
    Object? defaultValueX = fhirSentinel,
    Object? element = fhirSentinel,
    Object? listMode = fhirSentinel,
    Object? variable = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? check = fhirSentinel,
    Object? logMessage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapSource(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        context: context as FhirId? ?? _value.context,
        min: identical(min, fhirSentinel) ? _value.min : min as FhirInteger?,
        max: identical(max, fhirSentinel) ? _value.max : max as FhirString?,
        type: identical(type, fhirSentinel) ? _value.type : type as FhirString?,
        defaultValueX: identical(defaultValueX, fhirSentinel)
            ? _value.defaultValueX
            : defaultValueX as FhirBase64Binary?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as FhirString?,
        listMode: identical(listMode, fhirSentinel)
            ? _value.listMode
            : listMode as StructureMapSourceListMode?,
        variable: identical(variable, fhirSentinel)
            ? _value.variable
            : variable as FhirId?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as FhirString?,
        check: identical(check, fhirSentinel)
            ? _value.check
            : check as FhirString?,
        logMessage: identical(logMessage, fhirSentinel)
            ? _value.logMessage
            : logMessage as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapSourceCopyWithExtension on StructureMapSource {
  $StructureMapSourceCopyWith<StructureMapSource> get copyWith =>
      _$StructureMapSourceCopyWithImpl<StructureMapSource>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapTargetCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    StructureMapContextType? contextType,
    FhirString? element,
    FhirId? variable,
    List<StructureMapTargetListMode>? listMode,
    FhirId? listRuleId,
    StructureMapTransform? transform,
    List<StructureMapParameter>? parameter,
    bool? disallowExtensions,
  });
}

class _$StructureMapTargetCopyWithImpl<T>
    implements $StructureMapTargetCopyWith<T> {
  final StructureMapTarget _value;
  final T Function(StructureMapTarget) _then;

  _$StructureMapTargetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? context = fhirSentinel,
    Object? contextType = fhirSentinel,
    Object? element = fhirSentinel,
    Object? variable = fhirSentinel,
    Object? listMode = fhirSentinel,
    Object? listRuleId = fhirSentinel,
    Object? transform = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapTarget(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as FhirId?,
        contextType: identical(contextType, fhirSentinel)
            ? _value.contextType
            : contextType as StructureMapContextType?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as FhirString?,
        variable: identical(variable, fhirSentinel)
            ? _value.variable
            : variable as FhirId?,
        listMode: identical(listMode, fhirSentinel)
            ? _value.listMode
            : listMode as List<StructureMapTargetListMode>?,
        listRuleId: identical(listRuleId, fhirSentinel)
            ? _value.listRuleId
            : listRuleId as FhirId?,
        transform: identical(transform, fhirSentinel)
            ? _value.transform
            : transform as StructureMapTransform?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<StructureMapParameter>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapTargetCopyWithExtension on StructureMapTarget {
  $StructureMapTargetCopyWith<StructureMapTarget> get copyWith =>
      _$StructureMapTargetCopyWithImpl<StructureMapTarget>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? valueX,
    bool? disallowExtensions,
  });
}

class _$StructureMapParameterCopyWithImpl<T>
    implements $StructureMapParameterCopyWith<T> {
  final StructureMapParameter _value;
  final T Function(StructureMapParameter) _then;

  _$StructureMapParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        valueX: valueX as FhirId? ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapParameterCopyWithExtension on StructureMapParameter {
  $StructureMapParameterCopyWith<StructureMapParameter> get copyWith =>
      _$StructureMapParameterCopyWithImpl<StructureMapParameter>(
        this,
        (value) => value,
      );
}

abstract class $StructureMapDependentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<FhirString>? variable,
    bool? disallowExtensions,
  });
}

class _$StructureMapDependentCopyWithImpl<T>
    implements $StructureMapDependentCopyWith<T> {
  final StructureMapDependent _value;
  final T Function(StructureMapDependent) _then;

  _$StructureMapDependentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? variable = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureMapDependent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: name as FhirId? ?? _value.name,
        variable: variable as List<FhirString>? ?? _value.variable,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureMapDependentCopyWithExtension on StructureMapDependent {
  $StructureMapDependentCopyWith<StructureMapDependent> get copyWith =>
      _$StructureMapDependentCopyWithImpl<StructureMapDependent>(
        this,
        (value) => value,
      );
}

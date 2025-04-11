// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'terminology_capabilities.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TerminologyCapabilitiesCopyWith<T>
    extends $CanonicalResourceCopyWith<T> {
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
    CapabilityStatementKind? kind,
    TerminologyCapabilitiesSoftware? software,
    TerminologyCapabilitiesImplementation? implementation,
    FhirBoolean? lockedDate,
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,
    TerminologyCapabilitiesExpansion? expansion,
    CodeSearchSupport? codeSearch,
    TerminologyCapabilitiesValidateCode? validateCode,
    TerminologyCapabilitiesTranslation? translation,
    TerminologyCapabilitiesClosure? closure,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesCopyWithImpl<T>
    implements $TerminologyCapabilitiesCopyWith<T> {
  final TerminologyCapabilities _value;
  final T Function(TerminologyCapabilities) _then;

  _$TerminologyCapabilitiesCopyWithImpl(this._value, this._then);

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
    Object? kind = fhirSentinel,
    Object? software = fhirSentinel,
    Object? implementation = fhirSentinel,
    Object? lockedDate = fhirSentinel,
    Object? codeSystem = fhirSentinel,
    Object? expansion = fhirSentinel,
    Object? codeSearch = fhirSentinel,
    Object? validateCode = fhirSentinel,
    Object? translation = fhirSentinel,
    Object? closure = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilities(
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
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDateTime?) ?? _value.date,
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
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : (kind as CapabilityStatementKind?) ?? _value.kind,
        software: identical(software, fhirSentinel)
            ? _value.software
            : software as TerminologyCapabilitiesSoftware?,
        implementation: identical(implementation, fhirSentinel)
            ? _value.implementation
            : implementation as TerminologyCapabilitiesImplementation?,
        lockedDate: identical(lockedDate, fhirSentinel)
            ? _value.lockedDate
            : lockedDate as FhirBoolean?,
        codeSystem: identical(codeSystem, fhirSentinel)
            ? _value.codeSystem
            : codeSystem as List<TerminologyCapabilitiesCodeSystem>?,
        expansion: identical(expansion, fhirSentinel)
            ? _value.expansion
            : expansion as TerminologyCapabilitiesExpansion?,
        codeSearch: identical(codeSearch, fhirSentinel)
            ? _value.codeSearch
            : codeSearch as CodeSearchSupport?,
        validateCode: identical(validateCode, fhirSentinel)
            ? _value.validateCode
            : validateCode as TerminologyCapabilitiesValidateCode?,
        translation: identical(translation, fhirSentinel)
            ? _value.translation
            : translation as TerminologyCapabilitiesTranslation?,
        closure: identical(closure, fhirSentinel)
            ? _value.closure
            : closure as TerminologyCapabilitiesClosure?,
      ),
    );
  }
}

extension TerminologyCapabilitiesCopyWithExtension on TerminologyCapabilities {
  $TerminologyCapabilitiesCopyWith<TerminologyCapabilities> get copyWith =>
      _$TerminologyCapabilitiesCopyWithImpl<TerminologyCapabilities>(
        this,
        (value) => value,
      );
}

abstract class $TerminologyCapabilitiesSoftwareCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? version,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesSoftwareCopyWithImpl<T>
    implements $TerminologyCapabilitiesSoftwareCopyWith<T> {
  final TerminologyCapabilitiesSoftware _value;
  final T Function(TerminologyCapabilitiesSoftware) _then;

  _$TerminologyCapabilitiesSoftwareCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? version = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesSoftware(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesSoftwareCopyWithExtension
    on TerminologyCapabilitiesSoftware {
  $TerminologyCapabilitiesSoftwareCopyWith<TerminologyCapabilitiesSoftware>
      get copyWith => _$TerminologyCapabilitiesSoftwareCopyWithImpl<
              TerminologyCapabilitiesSoftware>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesImplementationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirUrl? url,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesImplementationCopyWithImpl<T>
    implements $TerminologyCapabilitiesImplementationCopyWith<T> {
  final TerminologyCapabilitiesImplementation _value;
  final T Function(TerminologyCapabilitiesImplementation) _then;

  _$TerminologyCapabilitiesImplementationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? url = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesImplementation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : (description as FhirString?) ?? _value.description,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUrl?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesImplementationCopyWithExtension
    on TerminologyCapabilitiesImplementation {
  $TerminologyCapabilitiesImplementationCopyWith<
          TerminologyCapabilitiesImplementation>
      get copyWith => _$TerminologyCapabilitiesImplementationCopyWithImpl<
              TerminologyCapabilitiesImplementation>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesCodeSystemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    List<TerminologyCapabilitiesVersion>? version,
    FhirBoolean? subsumption,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesCodeSystemCopyWithImpl<T>
    implements $TerminologyCapabilitiesCodeSystemCopyWith<T> {
  final TerminologyCapabilitiesCodeSystem _value;
  final T Function(TerminologyCapabilitiesCodeSystem) _then;

  _$TerminologyCapabilitiesCodeSystemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? version = fhirSentinel,
    Object? subsumption = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesCodeSystem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        uri: identical(uri, fhirSentinel) ? _value.uri : uri as FhirCanonical?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as List<TerminologyCapabilitiesVersion>?,
        subsumption: identical(subsumption, fhirSentinel)
            ? _value.subsumption
            : subsumption as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesCodeSystemCopyWithExtension
    on TerminologyCapabilitiesCodeSystem {
  $TerminologyCapabilitiesCodeSystemCopyWith<TerminologyCapabilitiesCodeSystem>
      get copyWith => _$TerminologyCapabilitiesCodeSystemCopyWithImpl<
              TerminologyCapabilitiesCodeSystem>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesVersionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? code,
    FhirBoolean? isDefault,
    FhirBoolean? compositional,
    List<FhirCode>? language,
    List<TerminologyCapabilitiesFilter>? filter,
    List<FhirCode>? property,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesVersionCopyWithImpl<T>
    implements $TerminologyCapabilitiesVersionCopyWith<T> {
  final TerminologyCapabilitiesVersion _value;
  final T Function(TerminologyCapabilitiesVersion) _then;

  _$TerminologyCapabilitiesVersionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? isDefault = fhirSentinel,
    Object? compositional = fhirSentinel,
    Object? language = fhirSentinel,
    Object? filter = fhirSentinel,
    Object? property = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesVersion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirString?,
        isDefault: identical(isDefault, fhirSentinel)
            ? _value.isDefault
            : isDefault as FhirBoolean?,
        compositional: identical(compositional, fhirSentinel)
            ? _value.compositional
            : compositional as FhirBoolean?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as List<FhirCode>?,
        filter: identical(filter, fhirSentinel)
            ? _value.filter
            : filter as List<TerminologyCapabilitiesFilter>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<FhirCode>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesVersionCopyWithExtension
    on TerminologyCapabilitiesVersion {
  $TerminologyCapabilitiesVersionCopyWith<TerminologyCapabilitiesVersion>
      get copyWith => _$TerminologyCapabilitiesVersionCopyWithImpl<
              TerminologyCapabilitiesVersion>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesFilterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    List<FhirCode>? op,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesFilterCopyWithImpl<T>
    implements $TerminologyCapabilitiesFilterCopyWith<T> {
  final TerminologyCapabilitiesFilter _value;
  final T Function(TerminologyCapabilitiesFilter) _then;

  _$TerminologyCapabilitiesFilterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? op = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesFilter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        op: identical(op, fhirSentinel)
            ? _value.op
            : (op as List<FhirCode>?) ?? _value.op,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesFilterCopyWithExtension
    on TerminologyCapabilitiesFilter {
  $TerminologyCapabilitiesFilterCopyWith<TerminologyCapabilitiesFilter>
      get copyWith => _$TerminologyCapabilitiesFilterCopyWithImpl<
              TerminologyCapabilitiesFilter>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesExpansionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? hierarchical,
    FhirBoolean? paging,
    FhirBoolean? incomplete,
    List<TerminologyCapabilitiesParameter>? parameter,
    FhirMarkdown? textFilter,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesExpansionCopyWithImpl<T>
    implements $TerminologyCapabilitiesExpansionCopyWith<T> {
  final TerminologyCapabilitiesExpansion _value;
  final T Function(TerminologyCapabilitiesExpansion) _then;

  _$TerminologyCapabilitiesExpansionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? hierarchical = fhirSentinel,
    Object? paging = fhirSentinel,
    Object? incomplete = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? textFilter = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesExpansion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        hierarchical: identical(hierarchical, fhirSentinel)
            ? _value.hierarchical
            : hierarchical as FhirBoolean?,
        paging: identical(paging, fhirSentinel)
            ? _value.paging
            : paging as FhirBoolean?,
        incomplete: identical(incomplete, fhirSentinel)
            ? _value.incomplete
            : incomplete as FhirBoolean?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<TerminologyCapabilitiesParameter>?,
        textFilter: identical(textFilter, fhirSentinel)
            ? _value.textFilter
            : textFilter as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesExpansionCopyWithExtension
    on TerminologyCapabilitiesExpansion {
  $TerminologyCapabilitiesExpansionCopyWith<TerminologyCapabilitiesExpansion>
      get copyWith => _$TerminologyCapabilitiesExpansionCopyWithImpl<
              TerminologyCapabilitiesExpansion>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    FhirString? documentation,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesParameterCopyWithImpl<T>
    implements $TerminologyCapabilitiesParameterCopyWith<T> {
  final TerminologyCapabilitiesParameter _value;
  final T Function(TerminologyCapabilitiesParameter) _then;

  _$TerminologyCapabilitiesParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirCode?) ?? _value.name,
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

extension TerminologyCapabilitiesParameterCopyWithExtension
    on TerminologyCapabilitiesParameter {
  $TerminologyCapabilitiesParameterCopyWith<TerminologyCapabilitiesParameter>
      get copyWith => _$TerminologyCapabilitiesParameterCopyWithImpl<
              TerminologyCapabilitiesParameter>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesValidateCodeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translations,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesValidateCodeCopyWithImpl<T>
    implements $TerminologyCapabilitiesValidateCodeCopyWith<T> {
  final TerminologyCapabilitiesValidateCode _value;
  final T Function(TerminologyCapabilitiesValidateCode) _then;

  _$TerminologyCapabilitiesValidateCodeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? translations = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesValidateCode(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        translations: identical(translations, fhirSentinel)
            ? _value.translations
            : (translations as FhirBoolean?) ?? _value.translations,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesValidateCodeCopyWithExtension
    on TerminologyCapabilitiesValidateCode {
  $TerminologyCapabilitiesValidateCodeCopyWith<
          TerminologyCapabilitiesValidateCode>
      get copyWith => _$TerminologyCapabilitiesValidateCodeCopyWithImpl<
              TerminologyCapabilitiesValidateCode>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesTranslationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? needsMap,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesTranslationCopyWithImpl<T>
    implements $TerminologyCapabilitiesTranslationCopyWith<T> {
  final TerminologyCapabilitiesTranslation _value;
  final T Function(TerminologyCapabilitiesTranslation) _then;

  _$TerminologyCapabilitiesTranslationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? needsMap = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesTranslation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        needsMap: identical(needsMap, fhirSentinel)
            ? _value.needsMap
            : (needsMap as FhirBoolean?) ?? _value.needsMap,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesTranslationCopyWithExtension
    on TerminologyCapabilitiesTranslation {
  $TerminologyCapabilitiesTranslationCopyWith<
          TerminologyCapabilitiesTranslation>
      get copyWith => _$TerminologyCapabilitiesTranslationCopyWithImpl<
              TerminologyCapabilitiesTranslation>(
            this,
            (value) => value,
          );
}

abstract class $TerminologyCapabilitiesClosureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translation,
    bool? disallowExtensions,
  });
}

class _$TerminologyCapabilitiesClosureCopyWithImpl<T>
    implements $TerminologyCapabilitiesClosureCopyWith<T> {
  final TerminologyCapabilitiesClosure _value;
  final T Function(TerminologyCapabilitiesClosure) _then;

  _$TerminologyCapabilitiesClosureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? translation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TerminologyCapabilitiesClosure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        translation: identical(translation, fhirSentinel)
            ? _value.translation
            : translation as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TerminologyCapabilitiesClosureCopyWithExtension
    on TerminologyCapabilitiesClosure {
  $TerminologyCapabilitiesClosureCopyWith<TerminologyCapabilitiesClosure>
      get copyWith => _$TerminologyCapabilitiesClosureCopyWithImpl<
              TerminologyCapabilitiesClosure>(
            this,
            (value) => value,
          );
}

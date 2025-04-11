// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'implementation_guide.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImplementationGuideCopyWith<T>
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
    FhirMarkdown? copyright,
    FhirId? packageId,
    SPDXLicense? license,
    List<FHIRVersion>? fhirVersion,
    List<ImplementationGuideDependsOn>? dependsOn,
    List<ImplementationGuideGlobal>? global,
    ImplementationGuideDefinition? definition,
    ImplementationGuideManifest? manifest,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideCopyWithImpl<T>
    implements $ImplementationGuideCopyWith<T> {
  final ImplementationGuide _value;
  final T Function(ImplementationGuide) _then;

  _$ImplementationGuideCopyWithImpl(this._value, this._then);

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
    Object? copyright = fhirSentinel,
    Object? packageId = fhirSentinel,
    Object? license = fhirSentinel,
    Object? fhirVersion = fhirSentinel,
    Object? dependsOn = fhirSentinel,
    Object? global = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? manifest = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuide(
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
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirUri?) ?? _value.url,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
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
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        packageId: identical(packageId, fhirSentinel)
            ? _value.packageId
            : (packageId as FhirId?) ?? _value.packageId,
        license: identical(license, fhirSentinel)
            ? _value.license
            : license as SPDXLicense?,
        fhirVersion: identical(fhirVersion, fhirSentinel)
            ? _value.fhirVersion
            : (fhirVersion as List<FHIRVersion>?) ?? _value.fhirVersion,
        dependsOn: identical(dependsOn, fhirSentinel)
            ? _value.dependsOn
            : dependsOn as List<ImplementationGuideDependsOn>?,
        global: identical(global, fhirSentinel)
            ? _value.global
            : global as List<ImplementationGuideGlobal>?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as ImplementationGuideDefinition?,
        manifest: identical(manifest, fhirSentinel)
            ? _value.manifest
            : manifest as ImplementationGuideManifest?,
      ),
    );
  }
}

extension ImplementationGuideCopyWithExtension on ImplementationGuide {
  $ImplementationGuideCopyWith<ImplementationGuide> get copyWith =>
      _$ImplementationGuideCopyWithImpl<ImplementationGuide>(
        this,
        (value) => value,
      );
}

abstract class $ImplementationGuideDependsOnCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    FhirId? packageId,
    FhirString? version,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideDependsOnCopyWithImpl<T>
    implements $ImplementationGuideDependsOnCopyWith<T> {
  final ImplementationGuideDependsOn _value;
  final T Function(ImplementationGuideDependsOn) _then;

  _$ImplementationGuideDependsOnCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? packageId = fhirSentinel,
    Object? version = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideDependsOn(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        uri: identical(uri, fhirSentinel)
            ? _value.uri
            : (uri as FhirCanonical?) ?? _value.uri,
        packageId: identical(packageId, fhirSentinel)
            ? _value.packageId
            : packageId as FhirId?,
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

extension ImplementationGuideDependsOnCopyWithExtension
    on ImplementationGuideDependsOn {
  $ImplementationGuideDependsOnCopyWith<ImplementationGuideDependsOn>
      get copyWith => _$ImplementationGuideDependsOnCopyWithImpl<
              ImplementationGuideDependsOn>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuideGlobalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirCanonical? profile,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideGlobalCopyWithImpl<T>
    implements $ImplementationGuideGlobalCopyWith<T> {
  final ImplementationGuideGlobal _value;
  final T Function(ImplementationGuideGlobal) _then;

  _$ImplementationGuideGlobalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideGlobal(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as FhirCode?) ?? _value.type,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : (profile as FhirCanonical?) ?? _value.profile,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideGlobalCopyWithExtension
    on ImplementationGuideGlobal {
  $ImplementationGuideGlobalCopyWith<ImplementationGuideGlobal> get copyWith =>
      _$ImplementationGuideGlobalCopyWithImpl<ImplementationGuideGlobal>(
        this,
        (value) => value,
      );
}

abstract class $ImplementationGuideDefinitionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ImplementationGuideGrouping>? grouping,
    List<ImplementationGuideResource>? resource,
    ImplementationGuidePage? page,
    List<ImplementationGuideParameter>? parameter,
    List<ImplementationGuideTemplate>? template,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideDefinitionCopyWithImpl<T>
    implements $ImplementationGuideDefinitionCopyWith<T> {
  final ImplementationGuideDefinition _value;
  final T Function(ImplementationGuideDefinition) _then;

  _$ImplementationGuideDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? grouping = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? page = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? template = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        grouping: identical(grouping, fhirSentinel)
            ? _value.grouping
            : grouping as List<ImplementationGuideGrouping>?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : (resource as List<ImplementationGuideResource>?) ??
                _value.resource,
        page: identical(page, fhirSentinel)
            ? _value.page
            : page as ImplementationGuidePage?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<ImplementationGuideParameter>?,
        template: identical(template, fhirSentinel)
            ? _value.template
            : template as List<ImplementationGuideTemplate>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideDefinitionCopyWithExtension
    on ImplementationGuideDefinition {
  $ImplementationGuideDefinitionCopyWith<ImplementationGuideDefinition>
      get copyWith => _$ImplementationGuideDefinitionCopyWithImpl<
              ImplementationGuideDefinition>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuideGroupingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? description,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideGroupingCopyWithImpl<T>
    implements $ImplementationGuideGroupingCopyWith<T> {
  final ImplementationGuideGrouping _value;
  final T Function(ImplementationGuideGrouping) _then;

  _$ImplementationGuideGroupingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideGrouping(
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
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideGroupingCopyWithExtension
    on ImplementationGuideGrouping {
  $ImplementationGuideGroupingCopyWith<ImplementationGuideGrouping>
      get copyWith => _$ImplementationGuideGroupingCopyWithImpl<
              ImplementationGuideGrouping>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuideResourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    List<FHIRVersion>? fhirVersion,
    FhirString? name,
    FhirString? description,
    FhirBoolean? exampleX,
    FhirId? groupingId,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideResourceCopyWithImpl<T>
    implements $ImplementationGuideResourceCopyWith<T> {
  final ImplementationGuideResource _value;
  final T Function(ImplementationGuideResource) _then;

  _$ImplementationGuideResourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? fhirVersion = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? exampleX = fhirSentinel,
    Object? groupingId = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideResource(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as Reference?) ?? _value.reference,
        fhirVersion: identical(fhirVersion, fhirSentinel)
            ? _value.fhirVersion
            : fhirVersion as List<FHIRVersion>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        exampleX: identical(exampleX, fhirSentinel)
            ? _value.exampleX
            : exampleX as FhirBoolean?,
        groupingId: identical(groupingId, fhirSentinel)
            ? _value.groupingId
            : groupingId as FhirId?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideResourceCopyWithExtension
    on ImplementationGuideResource {
  $ImplementationGuideResourceCopyWith<ImplementationGuideResource>
      get copyWith => _$ImplementationGuideResourceCopyWithImpl<
              ImplementationGuideResource>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuidePageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? nameX,
    FhirString? title,
    GuidePageGeneration? generation,
    List<ImplementationGuidePage>? page,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuidePageCopyWithImpl<T>
    implements $ImplementationGuidePageCopyWith<T> {
  final ImplementationGuidePage _value;
  final T Function(ImplementationGuidePage) _then;

  _$ImplementationGuidePageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? nameX = fhirSentinel,
    Object? title = fhirSentinel,
    Object? generation = fhirSentinel,
    Object? page = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuidePage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        nameX: identical(nameX, fhirSentinel)
            ? _value.nameX
            : (nameX as FhirUrl?) ?? _value.nameX,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        generation: identical(generation, fhirSentinel)
            ? _value.generation
            : (generation as GuidePageGeneration?) ?? _value.generation,
        page: identical(page, fhirSentinel)
            ? _value.page
            : page as List<ImplementationGuidePage>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuidePageCopyWithExtension on ImplementationGuidePage {
  $ImplementationGuidePageCopyWith<ImplementationGuidePage> get copyWith =>
      _$ImplementationGuidePageCopyWithImpl<ImplementationGuidePage>(
        this,
        (value) => value,
      );
}

abstract class $ImplementationGuideParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    GuideParameterCode? code,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideParameterCopyWithImpl<T>
    implements $ImplementationGuideParameterCopyWith<T> {
  final ImplementationGuideParameter _value;
  final T Function(ImplementationGuideParameter) _then;

  _$ImplementationGuideParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as GuideParameterCode?) ?? _value.code,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideParameterCopyWithExtension
    on ImplementationGuideParameter {
  $ImplementationGuideParameterCopyWith<ImplementationGuideParameter>
      get copyWith => _$ImplementationGuideParameterCopyWithImpl<
              ImplementationGuideParameter>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuideTemplateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? source,
    FhirString? scope,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideTemplateCopyWithImpl<T>
    implements $ImplementationGuideTemplateCopyWith<T> {
  final ImplementationGuideTemplate _value;
  final T Function(ImplementationGuideTemplate) _then;

  _$ImplementationGuideTemplateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? source = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideTemplate(
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
        source: identical(source, fhirSentinel)
            ? _value.source
            : (source as FhirString?) ?? _value.source,
        scope: identical(scope, fhirSentinel)
            ? _value.scope
            : scope as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideTemplateCopyWithExtension
    on ImplementationGuideTemplate {
  $ImplementationGuideTemplateCopyWith<ImplementationGuideTemplate>
      get copyWith => _$ImplementationGuideTemplateCopyWithImpl<
              ImplementationGuideTemplate>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuideManifestCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? rendering,
    List<ImplementationGuideResource1>? resource,
    List<ImplementationGuidePage1>? page,
    List<FhirString>? image,
    List<FhirString>? other,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideManifestCopyWithImpl<T>
    implements $ImplementationGuideManifestCopyWith<T> {
  final ImplementationGuideManifest _value;
  final T Function(ImplementationGuideManifest) _then;

  _$ImplementationGuideManifestCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? rendering = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? page = fhirSentinel,
    Object? image = fhirSentinel,
    Object? other = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideManifest(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        rendering: identical(rendering, fhirSentinel)
            ? _value.rendering
            : rendering as FhirUrl?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : (resource as List<ImplementationGuideResource1>?) ??
                _value.resource,
        page: identical(page, fhirSentinel)
            ? _value.page
            : page as List<ImplementationGuidePage1>?,
        image: identical(image, fhirSentinel)
            ? _value.image
            : image as List<FhirString>?,
        other: identical(other, fhirSentinel)
            ? _value.other
            : other as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideManifestCopyWithExtension
    on ImplementationGuideManifest {
  $ImplementationGuideManifestCopyWith<ImplementationGuideManifest>
      get copyWith => _$ImplementationGuideManifestCopyWithImpl<
              ImplementationGuideManifest>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuideResource1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    FhirBoolean? exampleX,
    FhirUrl? relativePath,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuideResource1CopyWithImpl<T>
    implements $ImplementationGuideResource1CopyWith<T> {
  final ImplementationGuideResource1 _value;
  final T Function(ImplementationGuideResource1) _then;

  _$ImplementationGuideResource1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? exampleX = fhirSentinel,
    Object? relativePath = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuideResource1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as Reference?) ?? _value.reference,
        exampleX: identical(exampleX, fhirSentinel)
            ? _value.exampleX
            : exampleX as FhirBoolean?,
        relativePath: identical(relativePath, fhirSentinel)
            ? _value.relativePath
            : relativePath as FhirUrl?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuideResource1CopyWithExtension
    on ImplementationGuideResource1 {
  $ImplementationGuideResource1CopyWith<ImplementationGuideResource1>
      get copyWith => _$ImplementationGuideResource1CopyWithImpl<
              ImplementationGuideResource1>(
            this,
            (value) => value,
          );
}

abstract class $ImplementationGuidePage1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? title,
    List<FhirString>? anchor,
    bool? disallowExtensions,
  });
}

class _$ImplementationGuidePage1CopyWithImpl<T>
    implements $ImplementationGuidePage1CopyWith<T> {
  final ImplementationGuidePage1 _value;
  final T Function(ImplementationGuidePage1) _then;

  _$ImplementationGuidePage1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? anchor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImplementationGuidePage1(
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
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        anchor: identical(anchor, fhirSentinel)
            ? _value.anchor
            : anchor as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImplementationGuidePage1CopyWithExtension
    on ImplementationGuidePage1 {
  $ImplementationGuidePage1CopyWith<ImplementationGuidePage1> get copyWith =>
      _$ImplementationGuidePage1CopyWithImpl<ImplementationGuidePage1>(
        this,
        (value) => value,
      );
}

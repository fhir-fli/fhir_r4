// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'capability_statement.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CapabilityStatementCopyWith<T>
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
    List<FhirCanonical>? instantiates,
    List<FhirCanonical>? imports,
    CapabilityStatementSoftware? software,
    CapabilityStatementImplementation? implementation,
    FHIRVersion? fhirVersion,
    List<FhirCode>? format,
    List<FhirCode>? patchFormat,
    List<FhirCanonical>? implementationGuide,
    List<CapabilityStatementRest>? rest,
    List<CapabilityStatementMessaging>? messaging,
    List<CapabilityStatementDocument>? document,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementCopyWithImpl<T>
    implements $CapabilityStatementCopyWith<T> {
  final CapabilityStatement _value;
  final T Function(CapabilityStatement) _then;

  _$CapabilityStatementCopyWithImpl(this._value, this._then);

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
    Object? instantiates = fhirSentinel,
    Object? imports = fhirSentinel,
    Object? software = fhirSentinel,
    Object? implementation = fhirSentinel,
    Object? fhirVersion = fhirSentinel,
    Object? format = fhirSentinel,
    Object? patchFormat = fhirSentinel,
    Object? implementationGuide = fhirSentinel,
    Object? rest = fhirSentinel,
    Object? messaging = fhirSentinel,
    Object? document = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatement(
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
        instantiates: identical(instantiates, fhirSentinel)
            ? _value.instantiates
            : instantiates as List<FhirCanonical>?,
        imports: identical(imports, fhirSentinel)
            ? _value.imports
            : imports as List<FhirCanonical>?,
        software: identical(software, fhirSentinel)
            ? _value.software
            : software as CapabilityStatementSoftware?,
        implementation: identical(implementation, fhirSentinel)
            ? _value.implementation
            : implementation as CapabilityStatementImplementation?,
        fhirVersion: identical(fhirVersion, fhirSentinel)
            ? _value.fhirVersion
            : (fhirVersion as FHIRVersion?) ?? _value.fhirVersion,
        format: identical(format, fhirSentinel)
            ? _value.format
            : (format as List<FhirCode>?) ?? _value.format,
        patchFormat: identical(patchFormat, fhirSentinel)
            ? _value.patchFormat
            : patchFormat as List<FhirCode>?,
        implementationGuide: identical(implementationGuide, fhirSentinel)
            ? _value.implementationGuide
            : implementationGuide as List<FhirCanonical>?,
        rest: identical(rest, fhirSentinel)
            ? _value.rest
            : rest as List<CapabilityStatementRest>?,
        messaging: identical(messaging, fhirSentinel)
            ? _value.messaging
            : messaging as List<CapabilityStatementMessaging>?,
        document: identical(document, fhirSentinel)
            ? _value.document
            : document as List<CapabilityStatementDocument>?,
      ),
    );
  }
}

extension CapabilityStatementCopyWithExtension on CapabilityStatement {
  $CapabilityStatementCopyWith<CapabilityStatement> get copyWith =>
      _$CapabilityStatementCopyWithImpl<CapabilityStatement>(
        this,
        (value) => value,
      );
}

abstract class $CapabilityStatementSoftwareCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? version,
    FhirDateTime? releaseDate,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementSoftwareCopyWithImpl<T>
    implements $CapabilityStatementSoftwareCopyWith<T> {
  final CapabilityStatementSoftware _value;
  final T Function(CapabilityStatementSoftware) _then;

  _$CapabilityStatementSoftwareCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? version = fhirSentinel,
    Object? releaseDate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementSoftware(
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
        releaseDate: identical(releaseDate, fhirSentinel)
            ? _value.releaseDate
            : releaseDate as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementSoftwareCopyWithExtension
    on CapabilityStatementSoftware {
  $CapabilityStatementSoftwareCopyWith<CapabilityStatementSoftware>
      get copyWith => _$CapabilityStatementSoftwareCopyWithImpl<
              CapabilityStatementSoftware>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementImplementationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirUrl? url,
    Reference? custodian,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementImplementationCopyWithImpl<T>
    implements $CapabilityStatementImplementationCopyWith<T> {
  final CapabilityStatementImplementation _value;
  final T Function(CapabilityStatementImplementation) _then;

  _$CapabilityStatementImplementationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? url = fhirSentinel,
    Object? custodian = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementImplementation(
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
        custodian: identical(custodian, fhirSentinel)
            ? _value.custodian
            : custodian as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementImplementationCopyWithExtension
    on CapabilityStatementImplementation {
  $CapabilityStatementImplementationCopyWith<CapabilityStatementImplementation>
      get copyWith => _$CapabilityStatementImplementationCopyWithImpl<
              CapabilityStatementImplementation>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementRestCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    RestfulCapabilityMode? mode,
    FhirMarkdown? documentation,
    CapabilityStatementSecurity? security,
    List<CapabilityStatementResource>? resource,
    List<CapabilityStatementInteraction>? interaction,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    List<FhirCanonical>? compartment,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementRestCopyWithImpl<T>
    implements $CapabilityStatementRestCopyWith<T> {
  final CapabilityStatementRest _value;
  final T Function(CapabilityStatementRest) _then;

  _$CapabilityStatementRestCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? security = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? interaction = fhirSentinel,
    Object? searchParam = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? compartment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementRest(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as RestfulCapabilityMode?) ?? _value.mode,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
        security: identical(security, fhirSentinel)
            ? _value.security
            : security as CapabilityStatementSecurity?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as List<CapabilityStatementResource>?,
        interaction: identical(interaction, fhirSentinel)
            ? _value.interaction
            : interaction as List<CapabilityStatementInteraction>?,
        searchParam: identical(searchParam, fhirSentinel)
            ? _value.searchParam
            : searchParam as List<CapabilityStatementSearchParam>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as List<CapabilityStatementOperation>?,
        compartment: identical(compartment, fhirSentinel)
            ? _value.compartment
            : compartment as List<FhirCanonical>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementRestCopyWithExtension on CapabilityStatementRest {
  $CapabilityStatementRestCopyWith<CapabilityStatementRest> get copyWith =>
      _$CapabilityStatementRestCopyWithImpl<CapabilityStatementRest>(
        this,
        (value) => value,
      );
}

abstract class $CapabilityStatementSecurityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? cors,
    List<CodeableConcept>? service,
    FhirMarkdown? description,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementSecurityCopyWithImpl<T>
    implements $CapabilityStatementSecurityCopyWith<T> {
  final CapabilityStatementSecurity _value;
  final T Function(CapabilityStatementSecurity) _then;

  _$CapabilityStatementSecurityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? cors = fhirSentinel,
    Object? service = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementSecurity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        cors:
            identical(cors, fhirSentinel) ? _value.cors : cors as FhirBoolean?,
        service: identical(service, fhirSentinel)
            ? _value.service
            : service as List<CodeableConcept>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementSecurityCopyWithExtension
    on CapabilityStatementSecurity {
  $CapabilityStatementSecurityCopyWith<CapabilityStatementSecurity>
      get copyWith => _$CapabilityStatementSecurityCopyWithImpl<
              CapabilityStatementSecurity>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementResourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirCanonical? profile,
    List<FhirCanonical>? supportedProfile,
    FhirMarkdown? documentation,
    List<CapabilityStatementInteraction>? interaction,
    ResourceVersionPolicy? versioning,
    FhirBoolean? readHistory,
    FhirBoolean? updateCreate,
    FhirBoolean? conditionalCreate,
    ConditionalReadStatus? conditionalRead,
    FhirBoolean? conditionalUpdate,
    ConditionalDeleteStatus? conditionalDelete,
    List<ReferenceHandlingPolicy>? referencePolicy,
    List<FhirString>? searchInclude,
    List<FhirString>? searchRevInclude,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementResourceCopyWithImpl<T>
    implements $CapabilityStatementResourceCopyWith<T> {
  final CapabilityStatementResource _value;
  final T Function(CapabilityStatementResource) _then;

  _$CapabilityStatementResourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? supportedProfile = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? interaction = fhirSentinel,
    Object? versioning = fhirSentinel,
    Object? readHistory = fhirSentinel,
    Object? updateCreate = fhirSentinel,
    Object? conditionalCreate = fhirSentinel,
    Object? conditionalRead = fhirSentinel,
    Object? conditionalUpdate = fhirSentinel,
    Object? conditionalDelete = fhirSentinel,
    Object? referencePolicy = fhirSentinel,
    Object? searchInclude = fhirSentinel,
    Object? searchRevInclude = fhirSentinel,
    Object? searchParam = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementResource(
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
            : profile as FhirCanonical?,
        supportedProfile: identical(supportedProfile, fhirSentinel)
            ? _value.supportedProfile
            : supportedProfile as List<FhirCanonical>?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
        interaction: identical(interaction, fhirSentinel)
            ? _value.interaction
            : interaction as List<CapabilityStatementInteraction>?,
        versioning: identical(versioning, fhirSentinel)
            ? _value.versioning
            : versioning as ResourceVersionPolicy?,
        readHistory: identical(readHistory, fhirSentinel)
            ? _value.readHistory
            : readHistory as FhirBoolean?,
        updateCreate: identical(updateCreate, fhirSentinel)
            ? _value.updateCreate
            : updateCreate as FhirBoolean?,
        conditionalCreate: identical(conditionalCreate, fhirSentinel)
            ? _value.conditionalCreate
            : conditionalCreate as FhirBoolean?,
        conditionalRead: identical(conditionalRead, fhirSentinel)
            ? _value.conditionalRead
            : conditionalRead as ConditionalReadStatus?,
        conditionalUpdate: identical(conditionalUpdate, fhirSentinel)
            ? _value.conditionalUpdate
            : conditionalUpdate as FhirBoolean?,
        conditionalDelete: identical(conditionalDelete, fhirSentinel)
            ? _value.conditionalDelete
            : conditionalDelete as ConditionalDeleteStatus?,
        referencePolicy: identical(referencePolicy, fhirSentinel)
            ? _value.referencePolicy
            : referencePolicy as List<ReferenceHandlingPolicy>?,
        searchInclude: identical(searchInclude, fhirSentinel)
            ? _value.searchInclude
            : searchInclude as List<FhirString>?,
        searchRevInclude: identical(searchRevInclude, fhirSentinel)
            ? _value.searchRevInclude
            : searchRevInclude as List<FhirString>?,
        searchParam: identical(searchParam, fhirSentinel)
            ? _value.searchParam
            : searchParam as List<CapabilityStatementSearchParam>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as List<CapabilityStatementOperation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementResourceCopyWithExtension
    on CapabilityStatementResource {
  $CapabilityStatementResourceCopyWith<CapabilityStatementResource>
      get copyWith => _$CapabilityStatementResourceCopyWithImpl<
              CapabilityStatementResource>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementInteractionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TypeRestfulInteraction? code,
    FhirMarkdown? documentation,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementInteractionCopyWithImpl<T>
    implements $CapabilityStatementInteractionCopyWith<T> {
  final CapabilityStatementInteraction _value;
  final T Function(CapabilityStatementInteraction) _then;

  _$CapabilityStatementInteractionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementInteraction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as TypeRestfulInteraction?) ?? _value.code,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementInteractionCopyWithExtension
    on CapabilityStatementInteraction {
  $CapabilityStatementInteractionCopyWith<CapabilityStatementInteraction>
      get copyWith => _$CapabilityStatementInteractionCopyWithImpl<
              CapabilityStatementInteraction>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementSearchParamCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirCanonical? definition,
    SearchParamType? type,
    FhirMarkdown? documentation,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementSearchParamCopyWithImpl<T>
    implements $CapabilityStatementSearchParamCopyWith<T> {
  final CapabilityStatementSearchParam _value;
  final T Function(CapabilityStatementSearchParam) _then;

  _$CapabilityStatementSearchParamCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? type = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementSearchParam(
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
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as FhirCanonical?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as SearchParamType?) ?? _value.type,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementSearchParamCopyWithExtension
    on CapabilityStatementSearchParam {
  $CapabilityStatementSearchParamCopyWith<CapabilityStatementSearchParam>
      get copyWith => _$CapabilityStatementSearchParamCopyWithImpl<
              CapabilityStatementSearchParam>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementOperationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirCanonical? definition,
    FhirMarkdown? documentation,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementOperationCopyWithImpl<T>
    implements $CapabilityStatementOperationCopyWith<T> {
  final CapabilityStatementOperation _value;
  final T Function(CapabilityStatementOperation) _then;

  _$CapabilityStatementOperationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementOperation(
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
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : (definition as FhirCanonical?) ?? _value.definition,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementOperationCopyWithExtension
    on CapabilityStatementOperation {
  $CapabilityStatementOperationCopyWith<CapabilityStatementOperation>
      get copyWith => _$CapabilityStatementOperationCopyWithImpl<
              CapabilityStatementOperation>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementInteraction1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SystemRestfulInteraction? code,
    FhirMarkdown? documentation,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementInteraction1CopyWithImpl<T>
    implements $CapabilityStatementInteraction1CopyWith<T> {
  final CapabilityStatementInteraction1 _value;
  final T Function(CapabilityStatementInteraction1) _then;

  _$CapabilityStatementInteraction1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementInteraction1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as SystemRestfulInteraction?) ?? _value.code,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementInteraction1CopyWithExtension
    on CapabilityStatementInteraction1 {
  $CapabilityStatementInteraction1CopyWith<CapabilityStatementInteraction1>
      get copyWith => _$CapabilityStatementInteraction1CopyWithImpl<
              CapabilityStatementInteraction1>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementMessagingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CapabilityStatementEndpoint>? endpoint,
    FhirUnsignedInt? reliableCache,
    FhirMarkdown? documentation,
    List<CapabilityStatementSupportedMessage>? supportedMessage,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementMessagingCopyWithImpl<T>
    implements $CapabilityStatementMessagingCopyWith<T> {
  final CapabilityStatementMessaging _value;
  final T Function(CapabilityStatementMessaging) _then;

  _$CapabilityStatementMessagingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? reliableCache = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? supportedMessage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementMessaging(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<CapabilityStatementEndpoint>?,
        reliableCache: identical(reliableCache, fhirSentinel)
            ? _value.reliableCache
            : reliableCache as FhirUnsignedInt?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
        supportedMessage: identical(supportedMessage, fhirSentinel)
            ? _value.supportedMessage
            : supportedMessage as List<CapabilityStatementSupportedMessage>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementMessagingCopyWithExtension
    on CapabilityStatementMessaging {
  $CapabilityStatementMessagingCopyWith<CapabilityStatementMessaging>
      get copyWith => _$CapabilityStatementMessagingCopyWithImpl<
              CapabilityStatementMessaging>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementEndpointCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? protocol,
    FhirUrl? address,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementEndpointCopyWithImpl<T>
    implements $CapabilityStatementEndpointCopyWith<T> {
  final CapabilityStatementEndpoint _value;
  final T Function(CapabilityStatementEndpoint) _then;

  _$CapabilityStatementEndpointCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? protocol = fhirSentinel,
    Object? address = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementEndpoint(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        protocol: identical(protocol, fhirSentinel)
            ? _value.protocol
            : (protocol as Coding?) ?? _value.protocol,
        address: identical(address, fhirSentinel)
            ? _value.address
            : (address as FhirUrl?) ?? _value.address,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementEndpointCopyWithExtension
    on CapabilityStatementEndpoint {
  $CapabilityStatementEndpointCopyWith<CapabilityStatementEndpoint>
      get copyWith => _$CapabilityStatementEndpointCopyWithImpl<
              CapabilityStatementEndpoint>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementSupportedMessageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EventCapabilityMode? mode,
    FhirCanonical? definition,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementSupportedMessageCopyWithImpl<T>
    implements $CapabilityStatementSupportedMessageCopyWith<T> {
  final CapabilityStatementSupportedMessage _value;
  final T Function(CapabilityStatementSupportedMessage) _then;

  _$CapabilityStatementSupportedMessageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementSupportedMessage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as EventCapabilityMode?) ?? _value.mode,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : (definition as FhirCanonical?) ?? _value.definition,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CapabilityStatementSupportedMessageCopyWithExtension
    on CapabilityStatementSupportedMessage {
  $CapabilityStatementSupportedMessageCopyWith<
          CapabilityStatementSupportedMessage>
      get copyWith => _$CapabilityStatementSupportedMessageCopyWithImpl<
              CapabilityStatementSupportedMessage>(
            this,
            (value) => value,
          );
}

abstract class $CapabilityStatementDocumentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentMode? mode,
    FhirMarkdown? documentation,
    FhirCanonical? profile,
    bool? disallowExtensions,
  });
}

class _$CapabilityStatementDocumentCopyWithImpl<T>
    implements $CapabilityStatementDocumentCopyWith<T> {
  final CapabilityStatementDocument _value;
  final T Function(CapabilityStatementDocument) _then;

  _$CapabilityStatementDocumentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CapabilityStatementDocument(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as DocumentMode?) ?? _value.mode,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirMarkdown?,
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

extension CapabilityStatementDocumentCopyWithExtension
    on CapabilityStatementDocument {
  $CapabilityStatementDocumentCopyWith<CapabilityStatementDocument>
      get copyWith => _$CapabilityStatementDocumentCopyWithImpl<
              CapabilityStatementDocument>(
            this,
            (value) => value,
          );
}

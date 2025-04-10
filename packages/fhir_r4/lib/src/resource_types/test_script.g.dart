// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'test_script.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TestScriptCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Identifier? identifier,
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
    List<TestScriptOrigin>? origin,
    List<TestScriptDestination>? destination,
    TestScriptMetadata? metadata,
    List<TestScriptFixture>? fixture,
    List<Reference>? profile,
    List<TestScriptVariable>? variable,
    TestScriptSetup? setup,
    List<TestScriptTest>? test,
    TestScriptTeardown? teardown,
    bool? disallowExtensions,
  });
}

class _$TestScriptCopyWithImpl<T> implements $TestScriptCopyWith<T> {
  final TestScript _value;
  final T Function(TestScript) _then;

  _$TestScriptCopyWithImpl(this._value, this._then);

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
    Object? origin = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? metadata = fhirSentinel,
    Object? fixture = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? variable = fhirSentinel,
    Object? setup = fhirSentinel,
    Object? test = fhirSentinel,
    Object? teardown = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScript(
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
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
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
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as List<TestScriptOrigin>?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as List<TestScriptDestination>?,
        metadata: identical(metadata, fhirSentinel)
            ? _value.metadata
            : metadata as TestScriptMetadata?,
        fixture: identical(fixture, fhirSentinel)
            ? _value.fixture
            : fixture as List<TestScriptFixture>?,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as List<Reference>?,
        variable: identical(variable, fhirSentinel)
            ? _value.variable
            : variable as List<TestScriptVariable>?,
        setup: identical(setup, fhirSentinel)
            ? _value.setup
            : setup as TestScriptSetup?,
        test: identical(test, fhirSentinel)
            ? _value.test
            : test as List<TestScriptTest>?,
        teardown: identical(teardown, fhirSentinel)
            ? _value.teardown
            : teardown as TestScriptTeardown?,
      ),
    );
  }
}

extension TestScriptCopyWithExtension on TestScript {
  $TestScriptCopyWith<TestScript> get copyWith =>
      _$TestScriptCopyWithImpl<TestScript>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptOriginCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Coding? profile,
    bool? disallowExtensions,
  });
}

class _$TestScriptOriginCopyWithImpl<T>
    implements $TestScriptOriginCopyWith<T> {
  final TestScriptOrigin _value;
  final T Function(TestScriptOrigin) _then;

  _$TestScriptOriginCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? index = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptOrigin(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        index: identical(index, fhirSentinel)
            ? _value.index
            : (index as FhirInteger?) ?? _value.index,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : (profile as Coding?) ?? _value.profile,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptOriginCopyWithExtension on TestScriptOrigin {
  $TestScriptOriginCopyWith<TestScriptOrigin> get copyWith =>
      _$TestScriptOriginCopyWithImpl<TestScriptOrigin>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptDestinationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Coding? profile,
    bool? disallowExtensions,
  });
}

class _$TestScriptDestinationCopyWithImpl<T>
    implements $TestScriptDestinationCopyWith<T> {
  final TestScriptDestination _value;
  final T Function(TestScriptDestination) _then;

  _$TestScriptDestinationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? index = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptDestination(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        index: identical(index, fhirSentinel)
            ? _value.index
            : (index as FhirInteger?) ?? _value.index,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : (profile as Coding?) ?? _value.profile,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptDestinationCopyWithExtension on TestScriptDestination {
  $TestScriptDestinationCopyWith<TestScriptDestination> get copyWith =>
      _$TestScriptDestinationCopyWithImpl<TestScriptDestination>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptMetadataCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptLink>? link,
    List<TestScriptCapability>? capability,
    bool? disallowExtensions,
  });
}

class _$TestScriptMetadataCopyWithImpl<T>
    implements $TestScriptMetadataCopyWith<T> {
  final TestScriptMetadata _value;
  final T Function(TestScriptMetadata) _then;

  _$TestScriptMetadataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? link = fhirSentinel,
    Object? capability = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptMetadata(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<TestScriptLink>?,
        capability: identical(capability, fhirSentinel)
            ? _value.capability
            : (capability as List<TestScriptCapability>?) ?? _value.capability,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptMetadataCopyWithExtension on TestScriptMetadata {
  $TestScriptMetadataCopyWith<TestScriptMetadata> get copyWith =>
      _$TestScriptMetadataCopyWithImpl<TestScriptMetadata>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptLinkCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    FhirString? description,
    bool? disallowExtensions,
  });
}

class _$TestScriptLinkCopyWithImpl<T> implements $TestScriptLinkCopyWith<T> {
  final TestScriptLink _value;
  final T Function(TestScriptLink) _then;

  _$TestScriptLinkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? url = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptLink(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirUri?) ?? _value.url,
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

extension TestScriptLinkCopyWithExtension on TestScriptLink {
  $TestScriptLinkCopyWith<TestScriptLink> get copyWith =>
      _$TestScriptLinkCopyWithImpl<TestScriptLink>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptCapabilityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? required_,
    FhirBoolean? validated,
    FhirString? description,
    List<FhirInteger>? origin,
    FhirInteger? destination,
    List<FhirUri>? link,
    FhirCanonical? capabilities,
    bool? disallowExtensions,
  });
}

class _$TestScriptCapabilityCopyWithImpl<T>
    implements $TestScriptCapabilityCopyWith<T> {
  final TestScriptCapability _value;
  final T Function(TestScriptCapability) _then;

  _$TestScriptCapabilityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? required_ = fhirSentinel,
    Object? validated = fhirSentinel,
    Object? description = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? link = fhirSentinel,
    Object? capabilities = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptCapability(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        required_: identical(required_, fhirSentinel)
            ? _value.required_
            : (required_ as FhirBoolean?) ?? _value.required_,
        validated: identical(validated, fhirSentinel)
            ? _value.validated
            : (validated as FhirBoolean?) ?? _value.validated,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as List<FhirInteger>?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as FhirInteger?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<FhirUri>?,
        capabilities: identical(capabilities, fhirSentinel)
            ? _value.capabilities
            : (capabilities as FhirCanonical?) ?? _value.capabilities,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptCapabilityCopyWithExtension on TestScriptCapability {
  $TestScriptCapabilityCopyWith<TestScriptCapability> get copyWith =>
      _$TestScriptCapabilityCopyWithImpl<TestScriptCapability>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptFixtureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? autocreate,
    FhirBoolean? autodelete,
    Reference? resource,
    bool? disallowExtensions,
  });
}

class _$TestScriptFixtureCopyWithImpl<T>
    implements $TestScriptFixtureCopyWith<T> {
  final TestScriptFixture _value;
  final T Function(TestScriptFixture) _then;

  _$TestScriptFixtureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? autocreate = fhirSentinel,
    Object? autodelete = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptFixture(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        autocreate: identical(autocreate, fhirSentinel)
            ? _value.autocreate
            : (autocreate as FhirBoolean?) ?? _value.autocreate,
        autodelete: identical(autodelete, fhirSentinel)
            ? _value.autodelete
            : (autodelete as FhirBoolean?) ?? _value.autodelete,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptFixtureCopyWithExtension on TestScriptFixture {
  $TestScriptFixtureCopyWith<TestScriptFixture> get copyWith =>
      _$TestScriptFixtureCopyWithImpl<TestScriptFixture>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptVariableCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? defaultValue,
    FhirString? description,
    FhirString? expression,
    FhirString? headerField,
    FhirString? hint,
    FhirString? path,
    FhirId? sourceId,
    bool? disallowExtensions,
  });
}

class _$TestScriptVariableCopyWithImpl<T>
    implements $TestScriptVariableCopyWith<T> {
  final TestScriptVariable _value;
  final T Function(TestScriptVariable) _then;

  _$TestScriptVariableCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? defaultValue = fhirSentinel,
    Object? description = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? headerField = fhirSentinel,
    Object? hint = fhirSentinel,
    Object? path = fhirSentinel,
    Object? sourceId = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptVariable(
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
        defaultValue: identical(defaultValue, fhirSentinel)
            ? _value.defaultValue
            : defaultValue as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirString?,
        headerField: identical(headerField, fhirSentinel)
            ? _value.headerField
            : headerField as FhirString?,
        hint: identical(hint, fhirSentinel) ? _value.hint : hint as FhirString?,
        path: identical(path, fhirSentinel) ? _value.path : path as FhirString?,
        sourceId: identical(sourceId, fhirSentinel)
            ? _value.sourceId
            : sourceId as FhirId?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptVariableCopyWithExtension on TestScriptVariable {
  $TestScriptVariableCopyWith<TestScriptVariable> get copyWith =>
      _$TestScriptVariableCopyWithImpl<TestScriptVariable>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptSetupCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptAction>? action,
    bool? disallowExtensions,
  });
}

class _$TestScriptSetupCopyWithImpl<T> implements $TestScriptSetupCopyWith<T> {
  final TestScriptSetup _value;
  final T Function(TestScriptSetup) _then;

  _$TestScriptSetupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptSetup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : (action as List<TestScriptAction>?) ?? _value.action,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptSetupCopyWithExtension on TestScriptSetup {
  $TestScriptSetupCopyWith<TestScriptSetup> get copyWith =>
      _$TestScriptSetupCopyWithImpl<TestScriptSetup>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptActionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    TestScriptAssert? assert_,
    bool? disallowExtensions,
  });
}

class _$TestScriptActionCopyWithImpl<T>
    implements $TestScriptActionCopyWith<T> {
  final TestScriptAction _value;
  final T Function(TestScriptAction) _then;

  _$TestScriptActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? assert_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as TestScriptOperation?,
        assert_: identical(assert_, fhirSentinel)
            ? _value.assert_
            : assert_ as TestScriptAssert?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptActionCopyWithExtension on TestScriptAction {
  $TestScriptActionCopyWith<TestScriptAction> get copyWith =>
      _$TestScriptActionCopyWithImpl<TestScriptAction>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptOperationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    FhirCode? resource,
    FhirString? label,
    FhirString? description,
    FhirCode? accept,
    FhirCode? contentType,
    FhirInteger? destination,
    FhirBoolean? encodeRequestUrl,
    TestScriptRequestMethodCode? method,
    FhirInteger? origin,
    FhirString? params,
    List<TestScriptRequestHeader>? requestHeader,
    FhirId? requestId,
    FhirId? responseId,
    FhirId? sourceId,
    FhirId? targetId,
    FhirString? url,
    bool? disallowExtensions,
  });
}

class _$TestScriptOperationCopyWithImpl<T>
    implements $TestScriptOperationCopyWith<T> {
  final TestScriptOperation _value;
  final T Function(TestScriptOperation) _then;

  _$TestScriptOperationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? label = fhirSentinel,
    Object? description = fhirSentinel,
    Object? accept = fhirSentinel,
    Object? contentType = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? encodeRequestUrl = fhirSentinel,
    Object? method = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? params = fhirSentinel,
    Object? requestHeader = fhirSentinel,
    Object? requestId = fhirSentinel,
    Object? responseId = fhirSentinel,
    Object? sourceId = fhirSentinel,
    Object? targetId = fhirSentinel,
    Object? url = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptOperation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel) ? _value.type : type as Coding?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as FhirCode?,
        label: identical(label, fhirSentinel)
            ? _value.label
            : label as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        accept: identical(accept, fhirSentinel)
            ? _value.accept
            : accept as FhirCode?,
        contentType: identical(contentType, fhirSentinel)
            ? _value.contentType
            : contentType as FhirCode?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as FhirInteger?,
        encodeRequestUrl: identical(encodeRequestUrl, fhirSentinel)
            ? _value.encodeRequestUrl
            : (encodeRequestUrl as FhirBoolean?) ?? _value.encodeRequestUrl,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as TestScriptRequestMethodCode?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as FhirInteger?,
        params: identical(params, fhirSentinel)
            ? _value.params
            : params as FhirString?,
        requestHeader: identical(requestHeader, fhirSentinel)
            ? _value.requestHeader
            : requestHeader as List<TestScriptRequestHeader>?,
        requestId: identical(requestId, fhirSentinel)
            ? _value.requestId
            : requestId as FhirId?,
        responseId: identical(responseId, fhirSentinel)
            ? _value.responseId
            : responseId as FhirId?,
        sourceId: identical(sourceId, fhirSentinel)
            ? _value.sourceId
            : sourceId as FhirId?,
        targetId: identical(targetId, fhirSentinel)
            ? _value.targetId
            : targetId as FhirId?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptOperationCopyWithExtension on TestScriptOperation {
  $TestScriptOperationCopyWith<TestScriptOperation> get copyWith =>
      _$TestScriptOperationCopyWithImpl<TestScriptOperation>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptRequestHeaderCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? field,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$TestScriptRequestHeaderCopyWithImpl<T>
    implements $TestScriptRequestHeaderCopyWith<T> {
  final TestScriptRequestHeader _value;
  final T Function(TestScriptRequestHeader) _then;

  _$TestScriptRequestHeaderCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? field = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptRequestHeader(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        field: identical(field, fhirSentinel)
            ? _value.field
            : (field as FhirString?) ?? _value.field,
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

extension TestScriptRequestHeaderCopyWithExtension on TestScriptRequestHeader {
  $TestScriptRequestHeaderCopyWith<TestScriptRequestHeader> get copyWith =>
      _$TestScriptRequestHeaderCopyWithImpl<TestScriptRequestHeader>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptAssertCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? label,
    FhirString? description,
    AssertionDirectionType? direction,
    FhirString? compareToSourceId,
    FhirString? compareToSourceExpression,
    FhirString? compareToSourcePath,
    FhirCode? contentType,
    FhirString? expression,
    FhirString? headerField,
    FhirString? minimumId,
    FhirBoolean? navigationLinks,
    AssertionOperatorType? operator_,
    FhirString? path,
    TestScriptRequestMethodCode? requestMethod,
    FhirString? requestURL,
    FhirCode? resource,
    AssertionResponseTypes? response,
    FhirString? responseCode,
    FhirId? sourceId,
    FhirId? validateProfileId,
    FhirString? value,
    FhirBoolean? warningOnly,
    bool? disallowExtensions,
  });
}

class _$TestScriptAssertCopyWithImpl<T>
    implements $TestScriptAssertCopyWith<T> {
  final TestScriptAssert _value;
  final T Function(TestScriptAssert) _then;

  _$TestScriptAssertCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? label = fhirSentinel,
    Object? description = fhirSentinel,
    Object? direction = fhirSentinel,
    Object? compareToSourceId = fhirSentinel,
    Object? compareToSourceExpression = fhirSentinel,
    Object? compareToSourcePath = fhirSentinel,
    Object? contentType = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? headerField = fhirSentinel,
    Object? minimumId = fhirSentinel,
    Object? navigationLinks = fhirSentinel,
    Object? operator_ = fhirSentinel,
    Object? path = fhirSentinel,
    Object? requestMethod = fhirSentinel,
    Object? requestURL = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? response = fhirSentinel,
    Object? responseCode = fhirSentinel,
    Object? sourceId = fhirSentinel,
    Object? validateProfileId = fhirSentinel,
    Object? value = fhirSentinel,
    Object? warningOnly = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptAssert(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        label: identical(label, fhirSentinel)
            ? _value.label
            : label as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        direction: identical(direction, fhirSentinel)
            ? _value.direction
            : direction as AssertionDirectionType?,
        compareToSourceId: identical(compareToSourceId, fhirSentinel)
            ? _value.compareToSourceId
            : compareToSourceId as FhirString?,
        compareToSourceExpression:
            identical(compareToSourceExpression, fhirSentinel)
                ? _value.compareToSourceExpression
                : compareToSourceExpression as FhirString?,
        compareToSourcePath: identical(compareToSourcePath, fhirSentinel)
            ? _value.compareToSourcePath
            : compareToSourcePath as FhirString?,
        contentType: identical(contentType, fhirSentinel)
            ? _value.contentType
            : contentType as FhirCode?,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirString?,
        headerField: identical(headerField, fhirSentinel)
            ? _value.headerField
            : headerField as FhirString?,
        minimumId: identical(minimumId, fhirSentinel)
            ? _value.minimumId
            : minimumId as FhirString?,
        navigationLinks: identical(navigationLinks, fhirSentinel)
            ? _value.navigationLinks
            : navigationLinks as FhirBoolean?,
        operator_: identical(operator_, fhirSentinel)
            ? _value.operator_
            : operator_ as AssertionOperatorType?,
        path: identical(path, fhirSentinel) ? _value.path : path as FhirString?,
        requestMethod: identical(requestMethod, fhirSentinel)
            ? _value.requestMethod
            : requestMethod as TestScriptRequestMethodCode?,
        requestURL: identical(requestURL, fhirSentinel)
            ? _value.requestURL
            : requestURL as FhirString?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as FhirCode?,
        response: identical(response, fhirSentinel)
            ? _value.response
            : response as AssertionResponseTypes?,
        responseCode: identical(responseCode, fhirSentinel)
            ? _value.responseCode
            : responseCode as FhirString?,
        sourceId: identical(sourceId, fhirSentinel)
            ? _value.sourceId
            : sourceId as FhirId?,
        validateProfileId: identical(validateProfileId, fhirSentinel)
            ? _value.validateProfileId
            : validateProfileId as FhirId?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirString?,
        warningOnly: identical(warningOnly, fhirSentinel)
            ? _value.warningOnly
            : (warningOnly as FhirBoolean?) ?? _value.warningOnly,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptAssertCopyWithExtension on TestScriptAssert {
  $TestScriptAssertCopyWith<TestScriptAssert> get copyWith =>
      _$TestScriptAssertCopyWithImpl<TestScriptAssert>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptTestCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? description,
    List<TestScriptAction>? action,
    bool? disallowExtensions,
  });
}

class _$TestScriptTestCopyWithImpl<T> implements $TestScriptTestCopyWith<T> {
  final TestScriptTest _value;
  final T Function(TestScriptTest) _then;

  _$TestScriptTestCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptTest(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : (action as List<TestScriptAction>?) ?? _value.action,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptTestCopyWithExtension on TestScriptTest {
  $TestScriptTestCopyWith<TestScriptTest> get copyWith =>
      _$TestScriptTestCopyWithImpl<TestScriptTest>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptAction1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    TestScriptAssert? assert_,
    bool? disallowExtensions,
  });
}

class _$TestScriptAction1CopyWithImpl<T>
    implements $TestScriptAction1CopyWith<T> {
  final TestScriptAction1 _value;
  final T Function(TestScriptAction1) _then;

  _$TestScriptAction1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? assert_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptAction1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as TestScriptOperation?,
        assert_: identical(assert_, fhirSentinel)
            ? _value.assert_
            : assert_ as TestScriptAssert?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptAction1CopyWithExtension on TestScriptAction1 {
  $TestScriptAction1CopyWith<TestScriptAction1> get copyWith =>
      _$TestScriptAction1CopyWithImpl<TestScriptAction1>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptTeardownCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptAction>? action,
    bool? disallowExtensions,
  });
}

class _$TestScriptTeardownCopyWithImpl<T>
    implements $TestScriptTeardownCopyWith<T> {
  final TestScriptTeardown _value;
  final T Function(TestScriptTeardown) _then;

  _$TestScriptTeardownCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptTeardown(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : (action as List<TestScriptAction>?) ?? _value.action,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptTeardownCopyWithExtension on TestScriptTeardown {
  $TestScriptTeardownCopyWith<TestScriptTeardown> get copyWith =>
      _$TestScriptTeardownCopyWithImpl<TestScriptTeardown>(
        this,
        (value) => value,
      );
}

abstract class $TestScriptAction2CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    bool? disallowExtensions,
  });
}

class _$TestScriptAction2CopyWithImpl<T>
    implements $TestScriptAction2CopyWith<T> {
  final TestScriptAction2 _value;
  final T Function(TestScriptAction2) _then;

  _$TestScriptAction2CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestScriptAction2(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : (operation as TestScriptOperation?) ?? _value.operation,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestScriptAction2CopyWithExtension on TestScriptAction2 {
  $TestScriptAction2CopyWith<TestScriptAction2> get copyWith =>
      _$TestScriptAction2CopyWithImpl<TestScriptAction2>(
        this,
        (value) => value,
      );
}

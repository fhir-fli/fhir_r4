// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'search_parameter.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SearchParameterCopyWith<T>
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
    FhirCanonical? derivedFrom,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirCode? code,
    List<FhirCode>? base,
    SearchParamType? type,
    FhirString? expression,
    FhirString? xpath,
    XPathUsageType? xpathUsage,
    List<FhirCode>? target,
    FhirBoolean? multipleOr,
    FhirBoolean? multipleAnd,
    List<SearchComparator>? comparator,
    List<SearchModifierCode>? modifier,
    List<FhirString>? chain,
    List<SearchParameterComponent>? component,
    bool? disallowExtensions,
  });
}

class _$SearchParameterCopyWithImpl<T> implements $SearchParameterCopyWith<T> {
  final SearchParameter _value;
  final T Function(SearchParameter) _then;

  _$SearchParameterCopyWithImpl(this._value, this._then);

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
    Object? derivedFrom = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? code = fhirSentinel,
    Object? base = fhirSentinel,
    Object? type = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? xpath = fhirSentinel,
    Object? xpathUsage = fhirSentinel,
    Object? target = fhirSentinel,
    Object? multipleOr = fhirSentinel,
    Object? multipleAnd = fhirSentinel,
    Object? comparator = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? chain = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SearchParameter(
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
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as FhirCanonical?,
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
            : (description as FhirMarkdown?) ?? _value.description,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        base: identical(base, fhirSentinel)
            ? _value.base
            : (base as List<FhirCode>?) ?? _value.base,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as SearchParamType?) ?? _value.type,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirString?,
        xpath: identical(xpath, fhirSentinel)
            ? _value.xpath
            : xpath as FhirString?,
        xpathUsage: identical(xpathUsage, fhirSentinel)
            ? _value.xpathUsage
            : xpathUsage as XPathUsageType?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<FhirCode>?,
        multipleOr: identical(multipleOr, fhirSentinel)
            ? _value.multipleOr
            : multipleOr as FhirBoolean?,
        multipleAnd: identical(multipleAnd, fhirSentinel)
            ? _value.multipleAnd
            : multipleAnd as FhirBoolean?,
        comparator: identical(comparator, fhirSentinel)
            ? _value.comparator
            : comparator as List<SearchComparator>?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<SearchModifierCode>?,
        chain: identical(chain, fhirSentinel)
            ? _value.chain
            : chain as List<FhirString>?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<SearchParameterComponent>?,
      ),
    );
  }
}

extension SearchParameterCopyWithExtension on SearchParameter {
  $SearchParameterCopyWith<SearchParameter> get copyWith =>
      _$SearchParameterCopyWithImpl<SearchParameter>(
        this,
        (value) => value,
      );
}

abstract class $SearchParameterComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? definition,
    FhirString? expression,
    bool? disallowExtensions,
  });
}

class _$SearchParameterComponentCopyWithImpl<T>
    implements $SearchParameterComponentCopyWith<T> {
  final SearchParameterComponent _value;
  final T Function(SearchParameterComponent) _then;

  _$SearchParameterComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SearchParameterComponent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : (definition as FhirCanonical?) ?? _value.definition,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : (expression as FhirString?) ?? _value.expression,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SearchParameterComponentCopyWithExtension
    on SearchParameterComponent {
  $SearchParameterComponentCopyWith<SearchParameterComponent> get copyWith =>
      _$SearchParameterComponentCopyWithImpl<SearchParameterComponent>(
        this,
        (value) => value,
      );
}

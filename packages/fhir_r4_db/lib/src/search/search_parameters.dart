// ignore_for_file: dead_null_aware_expression
// Generated from FHIR R4 SearchParameter definitions
// Do not edit by hand.

import 'package:fhir_r4/fhir_r4.dart' as fhir;

import 'package:fhir_r4_db/fhir_r4_db.dart';

extension MakeIterable on fhir.FhirBase {
  /// Returns an iterable of the given type.
  Iterable<T> makeIterable<T extends fhir.FhirBase>() {
    return <T>[this as T];
  }
}

extension MakeIterableList on Iterable<fhir.FhirBase?> {
  /// Returns an iterable of the given type.
  Iterable<T> makeIterable<T extends fhir.FhirBase>() {
    return whereType<T>();
  }
}

class SearchParameterLists {
  final stringParams = <StringSearchParametersCompanion>[];
  final tokenParams = <TokenSearchParametersCompanion>[];
  final referenceParams = <ReferenceSearchParametersCompanion>[];
  final dateParams = <DateSearchParametersCompanion>[];
  final numberParams = <NumberSearchParametersCompanion>[];
  final quantityParams = <QuantitySearchParametersCompanion>[];
  final uriParams = <UriSearchParametersCompanion>[];
  final compositeParams = <CompositeSearchParametersCompanion>[];
  final specialParams = <SpecialSearchParametersCompanion>[];
}

SearchParameterLists updateSearchParameters(fhir.Resource resource) {
  final resourceType = resource.resourceTypeString;
  final id = resource.id.toString();
  final lastUpdated = resource.meta!.lastUpdated!.valueDateTime!.millisecondsSinceEpoch;
  var i = 0;
  final searchParameterLists = SearchParameterLists();
  switch (resource) {
    case fhir.Account _:
      // Account.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Account.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Account.owner (reference)
      i = 0;
      for (final entry in resource.owner?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.owner',
            i,
            searchName: 'owner',
          ),
        );
        i++;
      }
      // Account.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Account.servicePeriod (date)
      i = 0;
      for (final entry in resource.servicePeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.servicePeriod',
            i,
            searchName: 'period',
          ),
        );
        i++;
      }
      // Account.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Account.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Account.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.ActivityDefinition _:
      // ActivityDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
            searchName: 'composed-of',
          ),
        );
        i++;
      }
      // ActivityDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ActivityDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ActivityDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // ActivityDefinition.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.library',
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // ActivityDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // ActivityDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // ActivityDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // ActivityDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ActivityDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ActivityDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // ActivityDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
            searchName: 'predecessor',
          ),
        );
        i++;
      }
      // ActivityDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ActivityDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ActivityDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='successor').resource",
            i,
            searchName: 'successor',
          ),
        );
        i++;
      }
      // ActivityDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // ActivityDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.topic',
            i,
            searchName: 'topic',
          ),
        );
        i++;
      }
      // ActivityDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ActivityDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ActivityDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.AdministrableProductDefinition _:
      // AdministrableProductDefinition.device (reference)
      i = 0;
      for (final entry in resource.device?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.device',
            i,
            searchName: 'device',
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.administrableDoseForm (token)
      i = 0;
      for (final entry in resource.administrableDoseForm
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.administrableDoseForm',
            i,
            searchName: 'dose-form',
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.formOf (reference)
      i = 0;
      for (final entry in resource.formOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.formOf',
            i,
            searchName: 'form-of',
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.ingredient (token)
      i = 0;
      for (final entry
          in resource.ingredient?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.ingredient',
            i,
            searchName: 'ingredient',
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.producedFrom (reference)
      i = 0;
      for (final entry
          in resource.producedFrom?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.producedFrom',
            i,
            searchName: 'manufactured-item',
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.routeOfAdministration.code (token)
      i = 0;
      for (final entry in resource.routeOfAdministration
              .map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.routeOfAdministration.code',
            i,
            searchName: 'route',
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.routeOfAdministration.targetSpecies.code (token)
      i = 0;
      for (final entry in resource.routeOfAdministration
              .expand(
                (e) =>
                    e.targetSpecies ??
                    <fhir.AdministrableProductDefinitionTargetSpecies>[],
              )
              .map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.routeOfAdministration.targetSpecies.code',
            i,
            searchName: 'target-species',
          ),
        );
        i++;
      }
    case fhir.AdverseEvent _:
      // AdverseEvent.actuality (token)
      i = 0;
      for (final entry
          in resource.actuality.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.actuality',
            i,
            searchName: 'actuality',
          ),
        );
        i++;
      }
      // AdverseEvent.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // AdverseEvent.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // AdverseEvent.event (token)
      i = 0;
      for (final entry
          in resource.event?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.event',
            i,
            searchName: 'event',
          ),
        );
        i++;
      }
      // AdverseEvent.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // AdverseEvent.recorder (reference)
      i = 0;
      for (final entry in resource.recorder?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.recorder',
            i,
            searchName: 'recorder',
          ),
        );
        i++;
      }
      // AdverseEvent.resultingCondition (reference)
      i = 0;
      for (final entry
          in resource.resultingCondition?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.resultingCondition',
            i,
            searchName: 'resultingcondition',
          ),
        );
        i++;
      }
      // AdverseEvent.seriousness (token)
      i = 0;
      for (final entry
          in resource.seriousness?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.seriousness',
            i,
            searchName: 'seriousness',
          ),
        );
        i++;
      }
      // AdverseEvent.severity (token)
      i = 0;
      for (final entry
          in resource.severity?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.severity',
            i,
            searchName: 'severity',
          ),
        );
        i++;
      }
      // AdverseEvent.study (reference)
      i = 0;
      for (final entry in resource.study?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.study',
            i,
            searchName: 'study',
          ),
        );
        i++;
      }
      // AdverseEvent.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // AdverseEvent.suspectEntity.instance (reference)
      i = 0;
      for (final entry in resource.suspectEntity
              ?.map<fhir.Reference?>((e) => e.instance)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.suspectEntity.instance',
            i,
            searchName: 'substance',
          ),
        );
        i++;
      }
    case fhir.AllergyIntolerance _:
      // AllergyIntolerance.asserter (reference)
      i = 0;
      for (final entry in resource.asserter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.asserter',
            i,
            searchName: 'asserter',
          ),
        );
        i++;
      }
      // AllergyIntolerance.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // AllergyIntolerance.clinicalStatus (token)
      i = 0;
      for (final entry
          in resource.clinicalStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.clinicalStatus',
            i,
            searchName: 'clinical-status',
          ),
        );
        i++;
      }
      // AllergyIntolerance.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.substance (token)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.CodeableConcept?>((e) => e.substance)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.substance',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // AllergyIntolerance.criticality (token)
      i = 0;
      for (final entry
          in resource.criticality?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.criticality',
            i,
            searchName: 'criticality',
          ),
        );
        i++;
      }
      // AllergyIntolerance.recordedDate (date)
      i = 0;
      for (final entry
          in resource.recordedDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.recordedDate',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // AllergyIntolerance.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // AllergyIntolerance.lastOccurrence (date)
      i = 0;
      for (final entry
          in resource.lastOccurrence?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.lastOccurrence',
            i,
            searchName: 'last-date',
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.manifestation (token)
      i = 0;
      for (final entry in resource.reaction
              ?.expand((e) => e.manifestation ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.manifestation',
            i,
            searchName: 'manifestation',
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.onset (date)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.FhirDateTime?>((e) => e.onset)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.onset',
            i,
            searchName: 'onset',
          ),
        );
        i++;
      }
      // AllergyIntolerance.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // AllergyIntolerance.recorder (reference)
      i = 0;
      for (final entry in resource.recorder?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.recorder',
            i,
            searchName: 'recorder',
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.exposureRoute (token)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.CodeableConcept?>((e) => e.exposureRoute)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.exposureRoute',
            i,
            searchName: 'route',
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.severity (token)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.FhirCodeEnum?>((e) => e.severity)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.severity',
            i,
            searchName: 'severity',
          ),
        );
        i++;
      }
      // AllergyIntolerance.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // AllergyIntolerance.verificationStatus (token)
      i = 0;
      for (final entry in resource.verificationStatus
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.verificationStatus',
            i,
            searchName: 'verification-status',
          ),
        );
        i++;
      }
    case fhir.Appointment _:
      // Appointment.participant.actor (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor',
            i,
            searchName: 'actor',
          ),
        );
        i++;
      }
      // Appointment.appointmentType (token)
      i = 0;
      for (final entry
          in resource.appointmentType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.appointmentType',
            i,
            searchName: 'appointment-type',
          ),
        );
        i++;
      }
      // Appointment.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // Appointment.start (date)
      i = 0;
      for (final entry in resource.start?.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.start',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Appointment.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Appointment.participant.actor.where(resolve() is Location) (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Location';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor.where(resolve() is Location)',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // Appointment.participant.status (token)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.FhirCodeEnum?>((e) => e.status)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.status',
            i,
            searchName: 'part-status',
          ),
        );
        i++;
      }
      // Appointment.participant.actor.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Appointment.participant.actor.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor.where(resolve() is Practitioner)',
            i,
            searchName: 'practitioner',
          ),
        );
        i++;
      }
      // Appointment.reasonCode (token)
      i = 0;
      for (final entry
          in resource.reasonCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.reasonCode',
            i,
            searchName: 'reason-code',
          ),
        );
        i++;
      }
      // Appointment.reasonReference (reference)
      i = 0;
      for (final entry
          in resource.reasonReference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.reasonReference',
            i,
            searchName: 'reason-reference',
          ),
        );
        i++;
      }
      // Appointment.serviceCategory (token)
      i = 0;
      for (final entry
          in resource.serviceCategory?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.serviceCategory',
            i,
            searchName: 'service-category',
          ),
        );
        i++;
      }
      // Appointment.serviceType (token)
      i = 0;
      for (final entry
          in resource.serviceType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.serviceType',
            i,
            searchName: 'service-type',
          ),
        );
        i++;
      }
      // Appointment.slot (reference)
      i = 0;
      for (final entry in resource.slot?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.slot',
            i,
            searchName: 'slot',
          ),
        );
        i++;
      }
      // Appointment.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.specialty',
            i,
            searchName: 'specialty',
          ),
        );
        i++;
      }
      // Appointment.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Appointment.supportingInformation (reference)
      i = 0;
      for (final entry
          in resource.supportingInformation?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.supportingInformation',
            i,
            searchName: 'supporting-info',
          ),
        );
        i++;
      }
    case fhir.AppointmentResponse _:
      // AppointmentResponse.actor (reference)
      i = 0;
      for (final entry in resource.actor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor',
            i,
            searchName: 'actor',
          ),
        );
        i++;
      }
      // AppointmentResponse.appointment (reference)
      i = 0;
      for (final entry in resource.appointment.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.appointment',
            i,
            searchName: 'appointment',
          ),
        );
        i++;
      }
      // AppointmentResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // AppointmentResponse.actor.where(resolve() is Location) (reference)
      i = 0;
      for (final entry
          in resource.actor?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Location';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor.where(resolve() is Location)',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // AppointmentResponse.participantStatus (token)
      i = 0;
      for (final entry
          in resource.participantStatus.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.participantStatus',
            i,
            searchName: 'part-status',
          ),
        );
        i++;
      }
      // AppointmentResponse.actor.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.actor?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // AppointmentResponse.actor.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry
          in resource.actor?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor.where(resolve() is Practitioner)',
            i,
            searchName: 'practitioner',
          ),
        );
        i++;
      }
    case fhir.AuditEvent _:
      // AuditEvent.action (token)
      i = 0;
      for (final entry in resource.action?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.action',
            i,
            searchName: 'action',
          ),
        );
        i++;
      }
      // AuditEvent.agent.network.address (string)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.AuditEventNetwork?>((e) => e.network)
              .map<fhir.FhirString?>((e) => e?.address)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.network.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // AuditEvent.agent.who (reference)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.Reference?>((e) => e.who)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.who',
            i,
            searchName: 'agent',
          ),
        );
        i++;
      }
      // AuditEvent.agent.name (string)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.name',
            i,
            searchName: 'agent-name',
          ),
        );
        i++;
      }
      // AuditEvent.agent.role (token)
      i = 0;
      for (final entry in resource.agent
              .expand((e) => e.role ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.role',
            i,
            searchName: 'agent-role',
          ),
        );
        i++;
      }
      // AuditEvent.agent.altId (token)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.FhirString?>((e) => e.altId)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.altId',
            i,
            searchName: 'altid',
          ),
        );
        i++;
      }
      // AuditEvent.recorded (date)
      i = 0;
      for (final entry in resource.recorded.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.recorded',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // AuditEvent.entity.what (reference)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.Reference?>((e) => e.what)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.what',
            i,
            searchName: 'entity',
          ),
        );
        i++;
      }
      // AuditEvent.entity.name (string)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.name',
            i,
            searchName: 'entity-name',
          ),
        );
        i++;
      }
      // AuditEvent.entity.role (token)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.Coding?>((e) => e.role)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.role',
            i,
            searchName: 'entity-role',
          ),
        );
        i++;
      }
      // AuditEvent.entity.type (token)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.Coding?>((e) => e.type)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.type',
            i,
            searchName: 'entity-type',
          ),
        );
        i++;
      }
      // AuditEvent.outcome (token)
      i = 0;
      for (final entry in resource.outcome?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.outcome',
            i,
            searchName: 'outcome',
          ),
        );
        i++;
      }
      // AuditEvent.agent.who.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.agent.map<fhir.Reference?>((e) => e.who).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.who.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // AuditEvent.entity.what.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.entity?.map<fhir.Reference?>((e) => e.what).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.what.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // AuditEvent.agent.policy (uri)
      i = 0;
      for (final entry in resource.agent
              .expand((e) => e.policy ?? <fhir.FhirUri>[])
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.policy',
            i,
            searchName: 'policy',
          ),
        );
        i++;
      }
      // AuditEvent.source.site (token)
      i = 0;
      for (final entry
          in resource.source.site?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.source.site',
            i,
            searchName: 'site',
          ),
        );
        i++;
      }
      // AuditEvent.source.observer (reference)
      i = 0;
      for (final entry
          in resource.source.observer.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.source.observer',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
      // AuditEvent.subtype (token)
      i = 0;
      for (final entry
          in resource.subtype?.makeIterable<fhir.Coding>() ?? <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.subtype',
            i,
            searchName: 'subtype',
          ),
        );
        i++;
      }
      // AuditEvent.type (token)
      i = 0;
      for (final entry
          in resource.type.makeIterable<fhir.Coding>() ?? <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.Basic _:
      // Basic.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // Basic.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Basic.created (date)
      i = 0;
      for (final entry in resource.created?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // Basic.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Basic.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Basic.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.BodyStructure _:
      // BodyStructure.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // BodyStructure.location (token)
      i = 0;
      for (final entry
          in resource.location?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // BodyStructure.morphology (token)
      i = 0;
      for (final entry
          in resource.morphology?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.morphology',
            i,
            searchName: 'morphology',
          ),
        );
        i++;
      }
      // BodyStructure.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
    case fhir.Bundle _:
      // Bundle.entry[0].resource (reference)
      i = 0;
      for (final entry in resource.entry?.firstOrNull?.resource
              ?.makeIterable<fhir.Resource>() ??
          <fhir.Resource>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Bundle.entry[0].resource',
            i,
            searchName: 'message',
          ),
        );
        i++;
      }
      // Bundle.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Bundle.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Bundle.timestamp (date)
      i = 0;
      for (final entry
          in resource.timestamp?.makeIterable<fhir.FhirInstant>() ??
              <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Bundle.timestamp',
            i,
            searchName: 'timestamp',
          ),
        );
        i++;
      }
      // Bundle.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Bundle.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.CapabilityStatement _:
      // CapabilityStatement.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // CapabilityStatement.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // CapabilityStatement.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // CapabilityStatement.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // CapabilityStatement.format (token)
      i = 0;
      for (final entry in resource.format.makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.format',
            i,
            searchName: 'format',
          ),
        );
        i++;
      }
      // CapabilityStatement.implementationGuide (reference)
      i = 0;
      for (final entry
          in resource.implementationGuide?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.implementationGuide',
            i,
            searchName: 'guide',
          ),
        );
        i++;
      }
      // CapabilityStatement.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.mode (token)
      i = 0;
      for (final entry in resource.rest
              ?.map<fhir.FhirCodeEnum?>((e) => e.mode)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.mode',
            i,
            searchName: 'mode',
          ),
        );
        i++;
      }
      // CapabilityStatement.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // CapabilityStatement.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.resource.type (token)
      i = 0;
      for (final entry in resource.rest
              ?.expand(
                (e) => e.resource ?? <fhir.CapabilityStatementResource>[],
              )
              .map<fhir.FhirCode?>((e) => e.type)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.resource.type',
            i,
            searchName: 'resource',
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.resource.profile (reference)
      i = 0;
      for (final entry in resource.rest
              ?.expand(
                (e) => e.resource ?? <fhir.CapabilityStatementResource>[],
              )
              .map<fhir.FhirCanonical?>((e) => e.profile)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.resource.profile',
            i,
            searchName: 'resource-profile',
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.security.service (token)
      i = 0;
      for (final entry in resource.rest
              ?.map<fhir.CapabilityStatementSecurity?>((e) => e.security)
              .expand((e) => e?.service ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.security.service',
            i,
            searchName: 'security-service',
          ),
        );
        i++;
      }
      // CapabilityStatement.software.name (string)
      i = 0;
      for (final entry
          in resource.software?.name.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.software.name',
            i,
            searchName: 'software',
          ),
        );
        i++;
      }
      // CapabilityStatement.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.resource.supportedProfile (reference)
      i = 0;
      for (final entry in resource.rest
              ?.expand(
                (e) => e.resource ?? <fhir.CapabilityStatementResource>[],
              )
              .expand((e) => e.supportedProfile ?? <fhir.FhirCanonical>[])
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.resource.supportedProfile',
            i,
            searchName: 'supported-profile',
          ),
        );
        i++;
      }
      // CapabilityStatement.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // CapabilityStatement.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // CapabilityStatement.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.CarePlan _:
      // CarePlan.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // CarePlan.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // CarePlan.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // CarePlan.activity.detail.code (token)
      i = 0;
      for (final entry in resource.activity
              ?.map<fhir.CarePlanDetail?>((e) => e.detail)
              .map<fhir.CodeableConcept?>((e) => e?.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.activity.detail.code',
            i,
            searchName: 'activity-code',
          ),
        );
        i++;
      }
      // CarePlan.activity.detail.scheduled (date)
      i = 0;
      for (final entry in resource.activity
              ?.map<fhir.CarePlanDetail?>((e) => e.detail)
              .map<fhir.ScheduledXCarePlanDetail?>((e) => e?.scheduledX)
              .makeIterable<fhir.ScheduledXCarePlanDetail>() ??
          <fhir.ScheduledXCarePlanDetail>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.activity.detail.scheduled',
            i,
            searchName: 'activity-date',
          ),
        );
        i++;
      }
      // CarePlan.activity.reference (reference)
      i = 0;
      for (final entry in resource.activity
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.activity.reference',
            i,
            searchName: 'activity-reference',
          ),
        );
        i++;
      }
      // CarePlan.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // CarePlan.careTeam (reference)
      i = 0;
      for (final entry in resource.careTeam?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.careTeam',
            i,
            searchName: 'care-team',
          ),
        );
        i++;
      }
      // CarePlan.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // CarePlan.addresses (reference)
      i = 0;
      for (final entry in resource.addresses?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.addresses',
            i,
            searchName: 'condition',
          ),
        );
        i++;
      }
      // CarePlan.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // CarePlan.goal (reference)
      i = 0;
      for (final entry in resource.goal?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.goal',
            i,
            searchName: 'goal',
          ),
        );
        i++;
      }
      // CarePlan.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // CarePlan.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // CarePlan.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.intent',
            i,
            searchName: 'intent',
          ),
        );
        i++;
      }
      // CarePlan.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // CarePlan.activity.detail.performer (reference)
      i = 0;
      for (final entry in resource.activity
              ?.map<fhir.CarePlanDetail?>((e) => e.detail)
              .expand((e) => e?.performer ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.activity.detail.performer',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // CarePlan.replaces (reference)
      i = 0;
      for (final entry in resource.replaces?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.replaces',
            i,
            searchName: 'replaces',
          ),
        );
        i++;
      }
      // CarePlan.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // CarePlan.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.CareTeam _:
      // CareTeam.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // CareTeam.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // CareTeam.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // CareTeam.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // CareTeam.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // CareTeam.participant.member (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.member)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.participant.member',
            i,
            searchName: 'participant',
          ),
        );
        i++;
      }
      // CareTeam.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // CareTeam.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.ChargeItem _:
      // ChargeItem.account (reference)
      i = 0;
      for (final entry in resource.account?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.account',
            i,
            searchName: 'account',
          ),
        );
        i++;
      }
      // ChargeItem.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // ChargeItem.context (reference)
      i = 0;
      for (final entry in resource.context?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.context',
            i,
            searchName: 'context',
          ),
        );
        i++;
      }
      // ChargeItem.enteredDate (date)
      i = 0;
      for (final entry
          in resource.enteredDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.enteredDate',
            i,
            searchName: 'entered-date',
          ),
        );
        i++;
      }
      // ChargeItem.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.enterer',
            i,
            searchName: 'enterer',
          ),
        );
        i++;
      }
      // ChargeItem.factorOverride (number)
      i = 0;
      for (final entry
          in resource.factorOverride?.makeIterable<fhir.FhirDecimal>() ??
              <fhir.FhirDecimal>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.factorOverride',
            i,
            searchName: 'factor-override',
          ),
        );
        i++;
      }
      // ChargeItem.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ChargeItem.occurrence (date)
      i = 0;
      for (final entry
          in resource.occurrenceX?.makeIterable<fhir.OccurrenceXChargeItem>() ??
              <fhir.OccurrenceXChargeItem>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.occurrence',
            i,
            searchName: 'occurrence',
          ),
        );
        i++;
      }
      // ChargeItem.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ChargeItem.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.performer.actor',
            i,
            searchName: 'performer-actor',
          ),
        );
        i++;
      }
      // ChargeItem.performer.function (token)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.CodeableConcept?>((e) => e.function_)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.performer.function',
            i,
            searchName: 'performer-function',
          ),
        );
        i++;
      }
      // ChargeItem.performingOrganization (reference)
      i = 0;
      for (final entry
          in resource.performingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.performingOrganization',
            i,
            searchName: 'performing-organization',
          ),
        );
        i++;
      }
      // ChargeItem.priceOverride (quantity)
      i = 0;
      for (final entry in resource.priceOverride?.makeIterable<fhir.Money>() ??
          <fhir.Money>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.priceOverride',
            i,
            searchName: 'price-override',
          ),
        );
        i++;
      }
      // ChargeItem.quantity (quantity)
      i = 0;
      for (final entry in resource.quantity?.makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.quantity',
            i,
            searchName: 'quantity',
          ),
        );
        i++;
      }
      // ChargeItem.requestingOrganization (reference)
      i = 0;
      for (final entry
          in resource.requestingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.requestingOrganization',
            i,
            searchName: 'requesting-organization',
          ),
        );
        i++;
      }
      // ChargeItem.service (reference)
      i = 0;
      for (final entry in resource.service?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.service',
            i,
            searchName: 'service',
          ),
        );
        i++;
      }
      // ChargeItem.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.ChargeItemDefinition _:
      // ChargeItemDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ChargeItemDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.Citation _:
      // Citation.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // Citation.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Citation.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // Citation.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // Citation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Citation.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // Citation.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Citation.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // Citation.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Citation.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // Citation.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // Citation.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // Citation.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.Claim _:
      // Claim.careTeam.provider (reference)
      i = 0;
      for (final entry in resource.careTeam
              ?.map<fhir.Reference?>((e) => e.provider)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.careTeam.provider',
            i,
            searchName: 'care-team',
          ),
        );
        i++;
      }
      // Claim.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // Claim.item.detail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ClaimDetail>[])
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.detail.udi',
            i,
            searchName: 'detail-udi',
          ),
        );
        i++;
      }
      // Claim.item.encounter (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.encounter ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Claim.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.enterer',
            i,
            searchName: 'enterer',
          ),
        );
        i++;
      }
      // Claim.facility (reference)
      i = 0;
      for (final entry in resource.facility?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.facility',
            i,
            searchName: 'facility',
          ),
        );
        i++;
      }
      // Claim.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Claim.insurer (reference)
      i = 0;
      for (final entry in resource.insurer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.insurer',
            i,
            searchName: 'insurer',
          ),
        );
        i++;
      }
      // Claim.item.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.udi',
            i,
            searchName: 'item-udi',
          ),
        );
        i++;
      }
      // Claim.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Claim.payee.party (reference)
      i = 0;
      for (final entry
          in resource.payee?.party?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.payee.party',
            i,
            searchName: 'payee',
          ),
        );
        i++;
      }
      // Claim.priority (token)
      i = 0;
      for (final entry
          in resource.priority.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.priority',
            i,
            searchName: 'priority',
          ),
        );
        i++;
      }
      // Claim.procedure.udi (reference)
      i = 0;
      for (final entry in resource.procedure
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.procedure.udi',
            i,
            searchName: 'procedure-udi',
          ),
        );
        i++;
      }
      // Claim.provider (reference)
      i = 0;
      for (final entry in resource.provider.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.provider',
            i,
            searchName: 'provider',
          ),
        );
        i++;
      }
      // Claim.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Claim.item.detail.subDetail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ClaimDetail>[])
              .expand((e) => e.subDetail ?? <fhir.ClaimSubDetail>[])
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.detail.subDetail.udi',
            i,
            searchName: 'subdetail-udi',
          ),
        );
        i++;
      }
      // Claim.use (token)
      i = 0;
      for (final entry in resource.use.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.use',
            i,
            searchName: 'use',
          ),
        );
        i++;
      }
    case fhir.ClaimResponse _:
      // ClaimResponse.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // ClaimResponse.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.disposition',
            i,
            searchName: 'disposition',
          ),
        );
        i++;
      }
      // ClaimResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ClaimResponse.insurer (reference)
      i = 0;
      for (final entry in resource.insurer.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.insurer',
            i,
            searchName: 'insurer',
          ),
        );
        i++;
      }
      // ClaimResponse.outcome (token)
      i = 0;
      for (final entry in resource.outcome.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.outcome',
            i,
            searchName: 'outcome',
          ),
        );
        i++;
      }
      // ClaimResponse.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ClaimResponse.payment.date (date)
      i = 0;
      for (final entry
          in resource.payment?.date?.makeIterable<fhir.FhirDate>() ??
              <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.payment.date',
            i,
            searchName: 'payment-date',
          ),
        );
        i++;
      }
      // ClaimResponse.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.request',
            i,
            searchName: 'request',
          ),
        );
        i++;
      }
      // ClaimResponse.requestor (reference)
      i = 0;
      for (final entry in resource.requestor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.requestor',
            i,
            searchName: 'requestor',
          ),
        );
        i++;
      }
      // ClaimResponse.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ClaimResponse.use (token)
      i = 0;
      for (final entry in resource.use.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.use',
            i,
            searchName: 'use',
          ),
        );
        i++;
      }
    case fhir.ClinicalImpression _:
      // ClinicalImpression.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ClinicalImpression.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ClinicalImpression.assessor (reference)
      i = 0;
      for (final entry in resource.assessor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.assessor',
            i,
            searchName: 'assessor',
          ),
        );
        i++;
      }
      // ClinicalImpression.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // ClinicalImpression.finding.itemCodeableConcept (token)
      i = 0;
      for (final entry in resource.finding
              ?.map<fhir.CodeableConcept?>((e) => e.itemCodeableConcept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.finding.itemCodeableConcept',
            i,
            searchName: 'finding-code',
          ),
        );
        i++;
      }
      // ClinicalImpression.finding.itemReference (reference)
      i = 0;
      for (final entry in resource.finding
              ?.map<fhir.Reference?>((e) => e.itemReference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.finding.itemReference',
            i,
            searchName: 'finding-ref',
          ),
        );
        i++;
      }
      // ClinicalImpression.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ClinicalImpression.investigation.item (reference)
      i = 0;
      for (final entry in resource.investigation
              ?.expand((e) => e.item ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.investigation.item',
            i,
            searchName: 'investigation',
          ),
        );
        i++;
      }
      // ClinicalImpression.previous (reference)
      i = 0;
      for (final entry in resource.previous?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.previous',
            i,
            searchName: 'previous',
          ),
        );
        i++;
      }
      // ClinicalImpression.problem (reference)
      i = 0;
      for (final entry in resource.problem?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.problem',
            i,
            searchName: 'problem',
          ),
        );
        i++;
      }
      // ClinicalImpression.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ClinicalImpression.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // ClinicalImpression.supportingInfo (reference)
      i = 0;
      for (final entry
          in resource.supportingInfo?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalImpression.supportingInfo',
            i,
            searchName: 'supporting-info',
          ),
        );
        i++;
      }
    case fhir.ClinicalUseDefinition _:
      // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure (token)
      i = 0;
      for (final entry in resource.contraindication?.diseaseSymptomProcedure
              ?.makeIterable<fhir.CodeableReference>() ??
          <fhir.CodeableReference>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.contraindication.diseaseSymptomProcedure',
            i,
            searchName: 'contraindication-reference',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure (reference)
      i = 0;
      for (final entry in resource.contraindication?.diseaseSymptomProcedure
              ?.makeIterable<fhir.CodeableReference>() ??
          <fhir.CodeableReference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.contraindication.diseaseSymptomProcedure',
            i,
            searchName: 'contraindication-reference',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect (token)
      i = 0;
      for (final entry in resource.undesirableEffect?.symptomConditionEffect
              ?.makeIterable<fhir.CodeableReference>() ??
          <fhir.CodeableReference>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.undesirableEffect.symptomConditionEffect',
            i,
            searchName: 'effect-reference',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect (reference)
      i = 0;
      for (final entry in resource.undesirableEffect?.symptomConditionEffect
              ?.makeIterable<fhir.CodeableReference>() ??
          <fhir.CodeableReference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.undesirableEffect.symptomConditionEffect',
            i,
            searchName: 'effect-reference',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.indication.diseaseSymptomProcedure (token)
      i = 0;
      for (final entry in resource.indication?.diseaseSymptomProcedure
              ?.makeIterable<fhir.CodeableReference>() ??
          <fhir.CodeableReference>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.indication.diseaseSymptomProcedure',
            i,
            searchName: 'indication-reference',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.indication.diseaseSymptomProcedure (reference)
      i = 0;
      for (final entry in resource.indication?.diseaseSymptomProcedure
              ?.makeIterable<fhir.CodeableReference>() ??
          <fhir.CodeableReference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.indication.diseaseSymptomProcedure',
            i,
            searchName: 'indication-reference',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.interaction.type (token)
      i = 0;
      for (final entry
          in resource.interaction?.type?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.interaction.type',
            i,
            searchName: 'interaction',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.subject.where(resolve() is MedicinalProductDefinition) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 &&
                ref[ref.length - 2] == 'MedicinalProductDefinition';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.subject.where(resolve() is MedicinalProductDefinition)',
            i,
            searchName: 'product',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.CodeSystem _:
      // CodeSystem.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // CodeSystem.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // CodeSystem.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // CodeSystem.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // CodeSystem.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // CodeSystem.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // CodeSystem.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // CodeSystem.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // CodeSystem.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.url',
            i,
            searchName: 'system',
          ),
        );
        i++;
      }
      // CodeSystem.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // CodeSystem.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // CodeSystem.concept.code (token)
      i = 0;
      for (final entry in resource.concept
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.concept.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // CodeSystem.content (token)
      i = 0;
      for (final entry in resource.content.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.content',
            i,
            searchName: 'content-mode',
          ),
        );
        i++;
      }
      // CodeSystem.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // CodeSystem.concept.designation.language (token)
      i = 0;
      for (final entry in resource.concept
              ?.expand((e) => e.designation ?? <fhir.CodeSystemDesignation>[])
              .map<fhir.FhirCodeEnum?>((e) => e.language)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.concept.designation.language',
            i,
            searchName: 'language',
          ),
        );
        i++;
      }
      // CodeSystem.supplements (reference)
      i = 0;
      for (final entry
          in resource.supplements?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.supplements',
            i,
            searchName: 'supplements',
          ),
        );
        i++;
      }
    case fhir.Communication _:
      // Communication.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // Communication.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Communication.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Communication.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Communication.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // Communication.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // Communication.medium (token)
      i = 0;
      for (final entry
          in resource.medium?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.medium',
            i,
            searchName: 'medium',
          ),
        );
        i++;
      }
      // Communication.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // Communication.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Communication.received (date)
      i = 0;
      for (final entry
          in resource.received?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.received',
            i,
            searchName: 'received',
          ),
        );
        i++;
      }
      // Communication.recipient (reference)
      i = 0;
      for (final entry in resource.recipient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.recipient',
            i,
            searchName: 'recipient',
          ),
        );
        i++;
      }
      // Communication.sender (reference)
      i = 0;
      for (final entry in resource.sender?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.sender',
            i,
            searchName: 'sender',
          ),
        );
        i++;
      }
      // Communication.sent (date)
      i = 0;
      for (final entry in resource.sent?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.sent',
            i,
            searchName: 'sent',
          ),
        );
        i++;
      }
      // Communication.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Communication.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.CommunicationRequest _:
      // CommunicationRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.authoredOn',
            i,
            searchName: 'authored',
          ),
        );
        i++;
      }
      // CommunicationRequest.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // CommunicationRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // CommunicationRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // CommunicationRequest.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.groupIdentifier',
            i,
            searchName: 'group-identifier',
          ),
        );
        i++;
      }
      // CommunicationRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // CommunicationRequest.medium (token)
      i = 0;
      for (final entry
          in resource.medium?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.medium',
            i,
            searchName: 'medium',
          ),
        );
        i++;
      }
      // CommunicationRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // CommunicationRequest.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.priority',
            i,
            searchName: 'priority',
          ),
        );
        i++;
      }
      // CommunicationRequest.recipient (reference)
      i = 0;
      for (final entry in resource.recipient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.recipient',
            i,
            searchName: 'recipient',
          ),
        );
        i++;
      }
      // CommunicationRequest.replaces (reference)
      i = 0;
      for (final entry in resource.replaces?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.replaces',
            i,
            searchName: 'replaces',
          ),
        );
        i++;
      }
      // CommunicationRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.requester',
            i,
            searchName: 'requester',
          ),
        );
        i++;
      }
      // CommunicationRequest.sender (reference)
      i = 0;
      for (final entry in resource.sender?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.sender',
            i,
            searchName: 'sender',
          ),
        );
        i++;
      }
      // CommunicationRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // CommunicationRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.CompartmentDefinition _:
      // CompartmentDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // CompartmentDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // CompartmentDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // CompartmentDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // CompartmentDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // CompartmentDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // CompartmentDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // CompartmentDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // CompartmentDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // CompartmentDefinition.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // CompartmentDefinition.resource.code (token)
      i = 0;
      for (final entry in resource.resource
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.resource.code',
            i,
            searchName: 'resource',
          ),
        );
        i++;
      }
    case fhir.Composition _:
      // Composition.date (date)
      i = 0;
      for (final entry in resource.date.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Composition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Composition.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Composition.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // Composition.attester.party (reference)
      i = 0;
      for (final entry in resource.attester
              ?.map<fhir.Reference?>((e) => e.party)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.attester.party',
            i,
            searchName: 'attester',
          ),
        );
        i++;
      }
      // Composition.author (reference)
      i = 0;
      for (final entry in resource.author.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // Composition.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Composition.confidentiality (token)
      i = 0;
      for (final entry
          in resource.confidentiality?.makeIterable<fhir.FhirCode>() ??
              <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.confidentiality',
            i,
            searchName: 'confidentiality',
          ),
        );
        i++;
      }
      // Composition.event.code (token)
      i = 0;
      for (final entry in resource.event
              ?.expand((e) => e.code ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.event.code',
            i,
            searchName: 'context',
          ),
        );
        i++;
      }
      // Composition.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Composition.section.entry (reference)
      i = 0;
      for (final entry in resource.section
              ?.expand((e) => e.entry ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.section.entry',
            i,
            searchName: 'entry',
          ),
        );
        i++;
      }
      // Composition.event.period (date)
      i = 0;
      for (final entry in resource.event
              ?.map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.event.period',
            i,
            searchName: 'period',
          ),
        );
        i++;
      }
      // Composition.section.code (token)
      i = 0;
      for (final entry in resource.section
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.section.code',
            i,
            searchName: 'section',
          ),
        );
        i++;
      }
      // Composition.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Composition.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Composition.title (string)
      i = 0;
      for (final entry in resource.title.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
    case fhir.ConceptMap _:
      // ConceptMap.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ConceptMap.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ConceptMap.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // ConceptMap.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ConceptMap.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // ConceptMap.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ConceptMap.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ConceptMap.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // ConceptMap.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ConceptMap.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ConceptMap.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // ConceptMap.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ConceptMap.group.element.target.dependsOn.property (uri)
      i = 0;
      for (final entry in resource.group
              ?.expand((e) => e.element ?? <fhir.ConceptMapElement>[])
              .expand((e) => e.target ?? <fhir.ConceptMapTarget>[])
              .expand((e) => e.dependsOn ?? <fhir.ConceptMapDependsOn>[])
              .map<fhir.FhirUri?>((e) => e.property)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.element.target.dependsOn.property',
            i,
            searchName: 'dependson',
          ),
        );
        i++;
      }
      // ConceptMap.group.unmapped.url (reference)
      i = 0;
      for (final entry in resource.group
              ?.map<fhir.ConceptMapUnmapped?>((e) => e.unmapped)
              .map<fhir.FhirCanonical?>((e) => e?.url)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.unmapped.url',
            i,
            searchName: 'other',
          ),
        );
        i++;
      }
      // ConceptMap.group.element.target.product.property (uri)
      i = 0;
      for (final entry in resource.group
              ?.expand((e) => e.element ?? <fhir.ConceptMapElement>[])
              .expand((e) => e.target ?? <fhir.ConceptMapTarget>[])
              .expand((e) => e.product ?? <fhir.ConceptMapDependsOn>[])
              .map<fhir.FhirUri?>((e) => e.property)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.element.target.product.property',
            i,
            searchName: 'product',
          ),
        );
        i++;
      }
      // ConceptMap.group.element.code (token)
      i = 0;
      for (final entry in resource.group
              ?.expand((e) => e.element ?? <fhir.ConceptMapElement>[])
              .map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.element.code',
            i,
            searchName: 'source-code',
          ),
        );
        i++;
      }
      // ConceptMap.group.source (uri)
      i = 0;
      for (final entry in resource.group
              ?.map<fhir.FhirUri?>((e) => e.source)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.source',
            i,
            searchName: 'source-system',
          ),
        );
        i++;
      }
      // ConceptMap.group.element.target.code (token)
      i = 0;
      for (final entry in resource.group
              ?.expand((e) => e.element ?? <fhir.ConceptMapElement>[])
              .expand((e) => e.target ?? <fhir.ConceptMapTarget>[])
              .map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.element.target.code',
            i,
            searchName: 'target-code',
          ),
        );
        i++;
      }
      // ConceptMap.group.target (uri)
      i = 0;
      for (final entry in resource.group
              ?.map<fhir.FhirUri?>((e) => e.target)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.target',
            i,
            searchName: 'target-system',
          ),
        );
        i++;
      }
    case fhir.Condition _:
      // Condition.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Condition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Condition.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Condition.abatement.as(Age) (quantity)
      i = 0;
      for (final entry
          in resource.abatementAge?.makeIterable<fhir.Age>() ?? <fhir.Age>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.as(Age)',
            i,
            searchName: 'abatement-age',
          ),
        );
        i++;
      }
      // Condition.abatement.as(Range) (quantity)
      i = 0;
      for (final entry in resource.abatementRange?.makeIterable<fhir.Range>() ??
          <fhir.Range>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.as(Range)',
            i,
            searchName: 'abatement-age',
          ),
        );
        i++;
      }
      // Condition.abatement.as(dateTime) (date)
      i = 0;
      for (final entry
          in resource.abatementDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.as(dateTime)',
            i,
            searchName: 'abatement-date',
          ),
        );
        i++;
      }
      // Condition.abatement.as(Period) (date)
      i = 0;
      for (final entry
          in resource.abatementPeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.as(Period)',
            i,
            searchName: 'abatement-date',
          ),
        );
        i++;
      }
      // Condition.abatement.as(string) (string)
      i = 0;
      for (final entry
          in resource.abatementString?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.as(string)',
            i,
            searchName: 'abatement-string',
          ),
        );
        i++;
      }
      // Condition.asserter (reference)
      i = 0;
      for (final entry in resource.asserter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.asserter',
            i,
            searchName: 'asserter',
          ),
        );
        i++;
      }
      // Condition.bodySite (token)
      i = 0;
      for (final entry
          in resource.bodySite?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.bodySite',
            i,
            searchName: 'body-site',
          ),
        );
        i++;
      }
      // Condition.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Condition.clinicalStatus (token)
      i = 0;
      for (final entry
          in resource.clinicalStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.clinicalStatus',
            i,
            searchName: 'clinical-status',
          ),
        );
        i++;
      }
      // Condition.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Condition.evidence.code (token)
      i = 0;
      for (final entry in resource.evidence
              ?.expand((e) => e.code ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.evidence.code',
            i,
            searchName: 'evidence',
          ),
        );
        i++;
      }
      // Condition.evidence.detail (reference)
      i = 0;
      for (final entry in resource.evidence
              ?.expand((e) => e.detail ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.evidence.detail',
            i,
            searchName: 'evidence-detail',
          ),
        );
        i++;
      }
      // Condition.onset.as(Age) (quantity)
      i = 0;
      for (final entry
          in resource.onsetAge?.makeIterable<fhir.Age>() ?? <fhir.Age>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.as(Age)',
            i,
            searchName: 'onset-age',
          ),
        );
        i++;
      }
      // Condition.onset.as(Range) (quantity)
      i = 0;
      for (final entry in resource.onsetRange?.makeIterable<fhir.Range>() ??
          <fhir.Range>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.as(Range)',
            i,
            searchName: 'onset-age',
          ),
        );
        i++;
      }
      // Condition.onset.as(dateTime) (date)
      i = 0;
      for (final entry
          in resource.onsetDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.as(dateTime)',
            i,
            searchName: 'onset-date',
          ),
        );
        i++;
      }
      // Condition.onset.as(Period) (date)
      i = 0;
      for (final entry in resource.onsetPeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.as(Period)',
            i,
            searchName: 'onset-date',
          ),
        );
        i++;
      }
      // Condition.onset.as(string) (string)
      i = 0;
      for (final entry
          in resource.onsetString?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.as(string)',
            i,
            searchName: 'onset-info',
          ),
        );
        i++;
      }
      // Condition.recordedDate (date)
      i = 0;
      for (final entry
          in resource.recordedDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.recordedDate',
            i,
            searchName: 'recorded-date',
          ),
        );
        i++;
      }
      // Condition.severity (token)
      i = 0;
      for (final entry
          in resource.severity?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.severity',
            i,
            searchName: 'severity',
          ),
        );
        i++;
      }
      // Condition.stage.summary (token)
      i = 0;
      for (final entry in resource.stage
              ?.map<fhir.CodeableConcept?>((e) => e.summary)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.stage.summary',
            i,
            searchName: 'stage',
          ),
        );
        i++;
      }
      // Condition.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Condition.verificationStatus (token)
      i = 0;
      for (final entry in resource.verificationStatus
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.verificationStatus',
            i,
            searchName: 'verification-status',
          ),
        );
        i++;
      }
    case fhir.Consent _:
      // Consent.dateTime (date)
      i = 0;
      for (final entry
          in resource.dateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.dateTime',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Consent.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Consent.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Consent.provision.action (token)
      i = 0;
      for (final entry
          in resource.provision?.action?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.action',
            i,
            searchName: 'action',
          ),
        );
        i++;
      }
      // Consent.provision.actor.reference (reference)
      i = 0;
      for (final entry in resource.provision?.actor
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.actor.reference',
            i,
            searchName: 'actor',
          ),
        );
        i++;
      }
      // Consent.category (token)
      i = 0;
      for (final entry
          in resource.category.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Consent.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.performer',
            i,
            searchName: 'consentor',
          ),
        );
        i++;
      }
      // Consent.provision.data.reference (reference)
      i = 0;
      for (final entry in resource.provision?.data
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.data.reference',
            i,
            searchName: 'data',
          ),
        );
        i++;
      }
      // Consent.organization (reference)
      i = 0;
      for (final entry
          in resource.organization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.organization',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // Consent.provision.period (date)
      i = 0;
      for (final entry
          in resource.provision?.period?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.period',
            i,
            searchName: 'period',
          ),
        );
        i++;
      }
      // Consent.provision.purpose (token)
      i = 0;
      for (final entry
          in resource.provision?.purpose?.makeIterable<fhir.Coding>() ??
              <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.purpose',
            i,
            searchName: 'purpose',
          ),
        );
        i++;
      }
      // Consent.scope (token)
      i = 0;
      for (final entry in resource.scope.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.scope',
            i,
            searchName: 'scope',
          ),
        );
        i++;
      }
      // Consent.provision.securityLabel (token)
      i = 0;
      for (final entry
          in resource.provision?.securityLabel?.makeIterable<fhir.Coding>() ??
              <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.securityLabel',
            i,
            searchName: 'security-label',
          ),
        );
        i++;
      }
      // Consent.source (reference)
      i = 0;
      for (final entry
          in resource.sourceX?.makeIterable<fhir.SourceXConsent>() ??
              <fhir.SourceXConsent>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.source',
            i,
            searchName: 'source-reference',
          ),
        );
        i++;
      }
      // Consent.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.Contract _:
      // Contract.authority (reference)
      i = 0;
      for (final entry in resource.authority?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.authority',
            i,
            searchName: 'authority',
          ),
        );
        i++;
      }
      // Contract.domain (reference)
      i = 0;
      for (final entry in resource.domain?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.domain',
            i,
            searchName: 'domain',
          ),
        );
        i++;
      }
      // Contract.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Contract.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.instantiatesUri',
            i,
            searchName: 'instantiates',
          ),
        );
        i++;
      }
      // Contract.issued (date)
      i = 0;
      for (final entry in resource.issued?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.issued',
            i,
            searchName: 'issued',
          ),
        );
        i++;
      }
      // Contract.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Contract.signer.party (reference)
      i = 0;
      for (final entry in resource.signer
              ?.map<fhir.Reference?>((e) => e.party)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.signer.party',
            i,
            searchName: 'signer',
          ),
        );
        i++;
      }
      // Contract.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Contract.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Contract.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
    case fhir.Coverage _:
      // Coverage.beneficiary (reference)
      i = 0;
      for (final entry in resource.beneficiary.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.beneficiary',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Coverage.class.type (token)
      i = 0;
      for (final entry in resource.class_
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.class.type',
            i,
            searchName: 'class-type',
          ),
        );
        i++;
      }
      // Coverage.class.value (string)
      i = 0;
      for (final entry in resource.class_
              ?.map<fhir.FhirString?>((e) => e.value)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.class.value',
            i,
            searchName: 'class-value',
          ),
        );
        i++;
      }
      // Coverage.dependent (string)
      i = 0;
      for (final entry in resource.dependent?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.dependent',
            i,
            searchName: 'dependent',
          ),
        );
        i++;
      }
      // Coverage.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Coverage.payor (reference)
      i = 0;
      for (final entry in resource.payor.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.payor',
            i,
            searchName: 'payor',
          ),
        );
        i++;
      }
      // Coverage.policyHolder (reference)
      i = 0;
      for (final entry
          in resource.policyHolder?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.policyHolder',
            i,
            searchName: 'policy-holder',
          ),
        );
        i++;
      }
      // Coverage.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Coverage.subscriber (reference)
      i = 0;
      for (final entry in resource.subscriber?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.subscriber',
            i,
            searchName: 'subscriber',
          ),
        );
        i++;
      }
      // Coverage.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.CoverageEligibilityRequest _:
      // CoverageEligibilityRequest.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.enterer',
            i,
            searchName: 'enterer',
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.facility (reference)
      i = 0;
      for (final entry in resource.facility?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.facility',
            i,
            searchName: 'facility',
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.provider (reference)
      i = 0;
      for (final entry in resource.provider?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.provider',
            i,
            searchName: 'provider',
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.CoverageEligibilityResponse _:
      // CoverageEligibilityResponse.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.disposition',
            i,
            searchName: 'disposition',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.insurer (reference)
      i = 0;
      for (final entry in resource.insurer.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.insurer',
            i,
            searchName: 'insurer',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.outcome (token)
      i = 0;
      for (final entry in resource.outcome.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.outcome',
            i,
            searchName: 'outcome',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.request (reference)
      i = 0;
      for (final entry in resource.request.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.request',
            i,
            searchName: 'request',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.requestor (reference)
      i = 0;
      for (final entry in resource.requestor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.requestor',
            i,
            searchName: 'requestor',
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.DetectedIssue _:
      // DetectedIssue.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DetectedIssue.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // DetectedIssue.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // DetectedIssue.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // DetectedIssue.identified (date)
      i = 0;
      for (final entry in resource.identifiedX
              ?.makeIterable<fhir.IdentifiedXDetectedIssue>() ??
          <fhir.IdentifiedXDetectedIssue>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.identified',
            i,
            searchName: 'identified',
          ),
        );
        i++;
      }
      // DetectedIssue.implicated (reference)
      i = 0;
      for (final entry in resource.implicated?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.implicated',
            i,
            searchName: 'implicated',
          ),
        );
        i++;
      }
    case fhir.Device _:
      // Device.deviceName.name (string)
      i = 0;
      for (final entry in resource.deviceName
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.deviceName.name',
            i,
            searchName: 'device-name',
          ),
        );
        i++;
      }
      // Device.type.coding.display (string)
      i = 0;
      for (final entry in resource.type?.coding
              ?.map<fhir.FhirString?>((e) => e.display)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.type.coding.display',
            i,
            searchName: 'device-name',
          ),
        );
        i++;
      }
      // Device.type.text (string)
      i = 0;
      for (final entry
          in resource.type?.text?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.type.text',
            i,
            searchName: 'device-name',
          ),
        );
        i++;
      }
      // Device.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Device.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // Device.manufacturer (string)
      i = 0;
      for (final entry
          in resource.manufacturer?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.manufacturer',
            i,
            searchName: 'manufacturer',
          ),
        );
        i++;
      }
      // Device.modelNumber (string)
      i = 0;
      for (final entry
          in resource.modelNumber?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.modelNumber',
            i,
            searchName: 'model',
          ),
        );
        i++;
      }
      // Device.owner (reference)
      i = 0;
      for (final entry in resource.owner?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.owner',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // Device.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Device.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Device.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // Device.udiCarrier.carrierHRF (string)
      i = 0;
      for (final entry in resource.udiCarrier
              ?.map<fhir.FhirString?>((e) => e.carrierHRF)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.udiCarrier.carrierHRF',
            i,
            searchName: 'udi-carrier',
          ),
        );
        i++;
      }
      // Device.udiCarrier.deviceIdentifier (string)
      i = 0;
      for (final entry in resource.udiCarrier
              ?.map<fhir.FhirString?>((e) => e.deviceIdentifier)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.udiCarrier.deviceIdentifier',
            i,
            searchName: 'udi-di',
          ),
        );
        i++;
      }
      // Device.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
    case fhir.DeviceDefinition _:
      // DeviceDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DeviceDefinition.parentDevice (reference)
      i = 0;
      for (final entry
          in resource.parentDevice?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.parentDevice',
            i,
            searchName: 'parent',
          ),
        );
        i++;
      }
      // DeviceDefinition.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.DeviceMetric _:
      // DeviceMetric.category (token)
      i = 0;
      for (final entry in resource.category.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // DeviceMetric.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DeviceMetric.parent (reference)
      i = 0;
      for (final entry in resource.parent?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.parent',
            i,
            searchName: 'parent',
          ),
        );
        i++;
      }
      // DeviceMetric.source (reference)
      i = 0;
      for (final entry in resource.source?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.source',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
      // DeviceMetric.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.DeviceRequest _:
      // DeviceRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DeviceRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // DeviceRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // DeviceRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.authoredOn',
            i,
            searchName: 'authored-on',
          ),
        );
        i++;
      }
      // DeviceRequest.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // DeviceRequest.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.groupIdentifier',
            i,
            searchName: 'group-identifier',
          ),
        );
        i++;
      }
      // DeviceRequest.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // DeviceRequest.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // DeviceRequest.insurance (reference)
      i = 0;
      for (final entry in resource.insurance?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.insurance',
            i,
            searchName: 'insurance',
          ),
        );
        i++;
      }
      // DeviceRequest.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.intent',
            i,
            searchName: 'intent',
          ),
        );
        i++;
      }
      // DeviceRequest.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.performer',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // DeviceRequest.priorRequest (reference)
      i = 0;
      for (final entry
          in resource.priorRequest?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.priorRequest',
            i,
            searchName: 'prior-request',
          ),
        );
        i++;
      }
      // DeviceRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.requester',
            i,
            searchName: 'requester',
          ),
        );
        i++;
      }
      // DeviceRequest.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // DeviceRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.DeviceUseStatement _:
      // DeviceUseStatement.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUseStatement.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // DeviceUseStatement.device (reference)
      i = 0;
      for (final entry in resource.device.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUseStatement.device',
            i,
            searchName: 'device',
          ),
        );
        i++;
      }
      // DeviceUseStatement.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUseStatement.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DeviceUseStatement.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUseStatement.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.DiagnosticReport _:
      // DiagnosticReport.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // DiagnosticReport.effective (date)
      i = 0;
      for (final entry in resource.effectiveX
              ?.makeIterable<fhir.EffectiveXDiagnosticReport>() ??
          <fhir.EffectiveXDiagnosticReport>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.effective',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // DiagnosticReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DiagnosticReport.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // DiagnosticReport.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // DiagnosticReport.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // DiagnosticReport.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // DiagnosticReport.conclusionCode (token)
      i = 0;
      for (final entry
          in resource.conclusionCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.conclusionCode',
            i,
            searchName: 'conclusion',
          ),
        );
        i++;
      }
      // DiagnosticReport.issued (date)
      i = 0;
      for (final entry in resource.issued?.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.issued',
            i,
            searchName: 'issued',
          ),
        );
        i++;
      }
      // DiagnosticReport.media.link (reference)
      i = 0;
      for (final entry in resource.media
              ?.map<fhir.Reference?>((e) => e.link)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.media.link',
            i,
            searchName: 'media',
          ),
        );
        i++;
      }
      // DiagnosticReport.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.performer',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // DiagnosticReport.result (reference)
      i = 0;
      for (final entry in resource.result?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.result',
            i,
            searchName: 'result',
          ),
        );
        i++;
      }
      // DiagnosticReport.resultsInterpreter (reference)
      i = 0;
      for (final entry
          in resource.resultsInterpreter?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.resultsInterpreter',
            i,
            searchName: 'results-interpreter',
          ),
        );
        i++;
      }
      // DiagnosticReport.specimen (reference)
      i = 0;
      for (final entry in resource.specimen?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.specimen',
            i,
            searchName: 'specimen',
          ),
        );
        i++;
      }
      // DiagnosticReport.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // DiagnosticReport.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.DocumentManifest _:
      // DocumentManifest.masterIdentifier (token)
      i = 0;
      for (final entry
          in resource.masterIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.masterIdentifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DocumentManifest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DocumentManifest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // DocumentManifest.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // DocumentManifest.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // DocumentManifest.created (date)
      i = 0;
      for (final entry in resource.created?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // DocumentManifest.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // DocumentManifest.content (reference)
      i = 0;
      for (final entry in resource.content.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.content',
            i,
            searchName: 'item',
          ),
        );
        i++;
      }
      // DocumentManifest.recipient (reference)
      i = 0;
      for (final entry in resource.recipient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.recipient',
            i,
            searchName: 'recipient',
          ),
        );
        i++;
      }
      // DocumentManifest.related.identifier (token)
      i = 0;
      for (final entry in resource.related
              ?.map<fhir.Identifier?>((e) => e.identifier)
              .makeIterable<fhir.Identifier>() ??
          <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.related.identifier',
            i,
            searchName: 'related-id',
          ),
        );
        i++;
      }
      // DocumentManifest.related.ref (reference)
      i = 0;
      for (final entry in resource.related
              ?.map<fhir.Reference?>((e) => e.ref)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.related.ref',
            i,
            searchName: 'related-ref',
          ),
        );
        i++;
      }
      // DocumentManifest.source (uri)
      i = 0;
      for (final entry in resource.source?.makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.source',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
      // DocumentManifest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // DocumentManifest.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentManifest.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.DocumentReference _:
      // DocumentReference.masterIdentifier (token)
      i = 0;
      for (final entry
          in resource.masterIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.masterIdentifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DocumentReference.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // DocumentReference.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // DocumentReference.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // DocumentReference.context.encounter.where(resolve() is Encounter) (reference)
      i = 0;
      for (final entry in resource.context?.encounter?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Encounter';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.context.encounter.where(resolve() is Encounter)',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // DocumentReference.authenticator (reference)
      i = 0;
      for (final entry
          in resource.authenticator?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.authenticator',
            i,
            searchName: 'authenticator',
          ),
        );
        i++;
      }
      // DocumentReference.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // DocumentReference.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // DocumentReference.content.attachment.contentType (token)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Attachment?>((e) => e.attachment)
              .map<fhir.FhirCode?>((e) => e?.contentType)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.attachment.contentType',
            i,
            searchName: 'contenttype',
          ),
        );
        i++;
      }
      // DocumentReference.custodian (reference)
      i = 0;
      for (final entry in resource.custodian?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.custodian',
            i,
            searchName: 'custodian',
          ),
        );
        i++;
      }
      // DocumentReference.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // DocumentReference.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // DocumentReference.context.event (token)
      i = 0;
      for (final entry
          in resource.context?.event?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.context.event',
            i,
            searchName: 'event',
          ),
        );
        i++;
      }
      // DocumentReference.context.facilityType (token)
      i = 0;
      for (final entry in resource.context?.facilityType
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.context.facilityType',
            i,
            searchName: 'facility',
          ),
        );
        i++;
      }
      // DocumentReference.content.format (token)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Coding?>((e) => e.format)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.format',
            i,
            searchName: 'format',
          ),
        );
        i++;
      }
      // DocumentReference.content.attachment.language (token)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Attachment?>((e) => e.attachment)
              .map<fhir.FhirCodeEnum?>((e) => e?.language)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.attachment.language',
            i,
            searchName: 'language',
          ),
        );
        i++;
      }
      // DocumentReference.content.attachment.url (uri)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Attachment?>((e) => e.attachment)
              .map<fhir.FhirUrl?>((e) => e?.url)
              .makeIterable<fhir.FhirUrl>() ??
          <fhir.FhirUrl>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.attachment.url',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // DocumentReference.context.period (date)
      i = 0;
      for (final entry
          in resource.context?.period?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.context.period',
            i,
            searchName: 'period',
          ),
        );
        i++;
      }
      // DocumentReference.context.related (reference)
      i = 0;
      for (final entry
          in resource.context?.related?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.context.related',
            i,
            searchName: 'related',
          ),
        );
        i++;
      }
      // DocumentReference.relatesTo.target (reference)
      i = 0;
      for (final entry in resource.relatesTo
              ?.map<fhir.Reference?>((e) => e.target)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.relatesTo.target',
            i,
            searchName: 'relatesto',
          ),
        );
        i++;
      }
      // DocumentReference.relatesTo.code (token)
      i = 0;
      for (final entry in resource.relatesTo
              ?.map<fhir.FhirCodeEnum?>((e) => e.code)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.relatesTo.code',
            i,
            searchName: 'relation',
          ),
        );
        i++;
      }
      // DocumentReference.securityLabel (token)
      i = 0;
      for (final entry
          in resource.securityLabel?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.securityLabel',
            i,
            searchName: 'security-label',
          ),
        );
        i++;
      }
      // DocumentReference.context.practiceSetting (token)
      i = 0;
      for (final entry in resource.context?.practiceSetting
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.context.practiceSetting',
            i,
            searchName: 'setting',
          ),
        );
        i++;
      }
      // DocumentReference.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // DocumentReference.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // DocumentReference.relatesTo (composite)
      i = 0;
      for (final entry in resource.relatesTo
              ?.makeIterable<fhir.DocumentReferenceRelatesTo>() ??
          <fhir.DocumentReferenceRelatesTo>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.relatesTo',
            i,
            searchName: 'relationship',
          ),
        );
        i++;
      }
    case fhir.Encounter _:
      // Encounter.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Encounter.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Encounter.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Encounter.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // Encounter.account (reference)
      i = 0;
      for (final entry in resource.account?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.account',
            i,
            searchName: 'account',
          ),
        );
        i++;
      }
      // Encounter.appointment (reference)
      i = 0;
      for (final entry
          in resource.appointment?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.appointment',
            i,
            searchName: 'appointment',
          ),
        );
        i++;
      }
      // Encounter.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // Encounter.class (token)
      i = 0;
      for (final entry
          in resource.class_.makeIterable<fhir.Coding>() ?? <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.class',
            i,
            searchName: 'class',
          ),
        );
        i++;
      }
      // Encounter.diagnosis.condition (reference)
      i = 0;
      for (final entry in resource.diagnosis
              ?.map<fhir.Reference?>((e) => e.condition)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.diagnosis.condition',
            i,
            searchName: 'diagnosis',
          ),
        );
        i++;
      }
      // Encounter.episodeOfCare (reference)
      i = 0;
      for (final entry
          in resource.episodeOfCare?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.episodeOfCare',
            i,
            searchName: 'episode-of-care',
          ),
        );
        i++;
      }
      // Encounter.length (quantity)
      i = 0;
      for (final entry in resource.length?.makeIterable<fhir.FhirDuration>() ??
          <fhir.FhirDuration>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.length',
            i,
            searchName: 'length',
          ),
        );
        i++;
      }
      // Encounter.location.location (reference)
      i = 0;
      for (final entry in resource.location
              ?.map<fhir.Reference?>((e) => e.location)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.location.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // Encounter.location.period (date)
      i = 0;
      for (final entry in resource.location
              ?.map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.location.period',
            i,
            searchName: 'location-period',
          ),
        );
        i++;
      }
      // Encounter.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // Encounter.participant.individual (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.individual)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.participant.individual',
            i,
            searchName: 'participant',
          ),
        );
        i++;
      }
      // Encounter.participant.type (token)
      i = 0;
      for (final entry in resource.participant
              ?.expand((e) => e.type ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.participant.type',
            i,
            searchName: 'participant-type',
          ),
        );
        i++;
      }
      // Encounter.participant.individual.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.individual)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.participant.individual.where(resolve() is Practitioner)',
            i,
            searchName: 'practitioner',
          ),
        );
        i++;
      }
      // Encounter.reasonCode (token)
      i = 0;
      for (final entry
          in resource.reasonCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.reasonCode',
            i,
            searchName: 'reason-code',
          ),
        );
        i++;
      }
      // Encounter.reasonReference (reference)
      i = 0;
      for (final entry
          in resource.reasonReference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.reasonReference',
            i,
            searchName: 'reason-reference',
          ),
        );
        i++;
      }
      // Encounter.serviceProvider (reference)
      i = 0;
      for (final entry
          in resource.serviceProvider?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.serviceProvider',
            i,
            searchName: 'service-provider',
          ),
        );
        i++;
      }
      // Encounter.hospitalization.specialArrangement (token)
      i = 0;
      for (final entry in resource.hospitalization?.specialArrangement
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.hospitalization.specialArrangement',
            i,
            searchName: 'special-arrangement',
          ),
        );
        i++;
      }
      // Encounter.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Encounter.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.FhirEndpoint _:
      // Endpoint.connectionType (token)
      i = 0;
      for (final entry in resource.connectionType.makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.connectionType',
            i,
            searchName: 'connection-type',
          ),
        );
        i++;
      }
      // Endpoint.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Endpoint.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Endpoint.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.managingOrganization',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // Endpoint.payloadType (token)
      i = 0;
      for (final entry
          in resource.payloadType.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.payloadType',
            i,
            searchName: 'payload-type',
          ),
        );
        i++;
      }
      // Endpoint.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.EnrollmentRequest _:
      // EnrollmentRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentRequest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // EnrollmentRequest.candidate (reference)
      i = 0;
      for (final entry in resource.candidate?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentRequest.candidate',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // EnrollmentRequest.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentRequest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.EnrollmentResponse _:
      // EnrollmentResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentResponse.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // EnrollmentResponse.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentResponse.request',
            i,
            searchName: 'request',
          ),
        );
        i++;
      }
      // EnrollmentResponse.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentResponse.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.EpisodeOfCare _:
      // EpisodeOfCare.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // EpisodeOfCare.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // EpisodeOfCare.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // EpisodeOfCare.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // EpisodeOfCare.careManager.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry
          in resource.careManager?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.careManager.where(resolve() is Practitioner)',
            i,
            searchName: 'care-manager',
          ),
        );
        i++;
      }
      // EpisodeOfCare.diagnosis.condition (reference)
      i = 0;
      for (final entry in resource.diagnosis
              ?.map<fhir.Reference?>((e) => e.condition)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.diagnosis.condition',
            i,
            searchName: 'condition',
          ),
        );
        i++;
      }
      // EpisodeOfCare.referralRequest (reference)
      i = 0;
      for (final entry
          in resource.referralRequest?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.referralRequest',
            i,
            searchName: 'incoming-referral',
          ),
        );
        i++;
      }
      // EpisodeOfCare.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.managingOrganization',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // EpisodeOfCare.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.EventDefinition _:
      // EventDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
            searchName: 'composed-of',
          ),
        );
        i++;
      }
      // EventDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // EventDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // EventDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // EventDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // EventDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // EventDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // EventDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
            searchName: 'predecessor',
          ),
        );
        i++;
      }
      // EventDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // EventDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='successor').resource",
            i,
            searchName: 'successor',
          ),
        );
        i++;
      }
      // EventDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // EventDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.topic',
            i,
            searchName: 'topic',
          ),
        );
        i++;
      }
      // EventDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // EventDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // EventDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.Evidence _:
      // Evidence.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // Evidence.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Evidence.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // Evidence.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Evidence.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // Evidence.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Evidence.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // Evidence.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // Evidence.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // Evidence.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.EvidenceReport _:
      // EvidenceReport.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceReport.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // EvidenceReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceReport.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // EvidenceReport.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceReport.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // EvidenceReport.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceReport.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // EvidenceReport.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceReport.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // EvidenceReport.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceReport.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.EvidenceVariable _:
      // EvidenceVariable.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // EvidenceVariable.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // EvidenceVariable.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // EvidenceVariable.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // EvidenceVariable.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // EvidenceVariable.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // EvidenceVariable.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // EvidenceVariable.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // EvidenceVariable.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // EvidenceVariable.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // EvidenceVariable.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.ExampleScenario _:
      // ExampleScenario.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ExampleScenario.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ExampleScenario.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ExampleScenario.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ExampleScenario.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // ExampleScenario.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ExampleScenario.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ExampleScenario.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ExampleScenario.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ExampleScenario.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.ExplanationOfBenefit _:
      // ExplanationOfBenefit.careTeam.provider (reference)
      i = 0;
      for (final entry in resource.careTeam
              ?.map<fhir.Reference?>((e) => e.provider)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.careTeam.provider',
            i,
            searchName: 'care-team',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.claim (reference)
      i = 0;
      for (final entry in resource.claim?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.claim',
            i,
            searchName: 'claim',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.insurance.coverage (reference)
      i = 0;
      for (final entry in resource.insurance
              .map<fhir.Reference?>((e) => e.coverage)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.insurance.coverage',
            i,
            searchName: 'coverage',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.detail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ExplanationOfBenefitDetail>[])
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.detail.udi',
            i,
            searchName: 'detail-udi',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.disposition',
            i,
            searchName: 'disposition',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.encounter (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.encounter ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.enterer',
            i,
            searchName: 'enterer',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.facility (reference)
      i = 0;
      for (final entry in resource.facility?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.facility',
            i,
            searchName: 'facility',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.udi',
            i,
            searchName: 'item-udi',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.payee.party (reference)
      i = 0;
      for (final entry
          in resource.payee?.party?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.payee.party',
            i,
            searchName: 'payee',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.procedure.udi (reference)
      i = 0;
      for (final entry in resource.procedure
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.procedure.udi',
            i,
            searchName: 'procedure-udi',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.provider (reference)
      i = 0;
      for (final entry in resource.provider.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.provider',
            i,
            searchName: 'provider',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.detail.subDetail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ExplanationOfBenefitDetail>[])
              .expand(
                (e) => e.subDetail ?? <fhir.ExplanationOfBenefitSubDetail>[],
              )
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.detail.subDetail.udi',
            i,
            searchName: 'subdetail-udi',
          ),
        );
        i++;
      }
    case fhir.FamilyMemberHistory _:
      // FamilyMemberHistory.condition.code (token)
      i = 0;
      for (final entry in resource.condition
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.condition.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.relationship (token)
      i = 0;
      for (final entry
          in resource.relationship.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.relationship',
            i,
            searchName: 'relationship',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.sex (token)
      i = 0;
      for (final entry in resource.sex?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.sex',
            i,
            searchName: 'sex',
          ),
        );
        i++;
      }
      // FamilyMemberHistory.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.Flag _:
      // Flag.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Flag.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Flag.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Flag.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // Flag.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Flag.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.Goal _:
      // Goal.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Goal.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Goal.achievementStatus (token)
      i = 0;
      for (final entry
          in resource.achievementStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.achievementStatus',
            i,
            searchName: 'achievement-status',
          ),
        );
        i++;
      }
      // Goal.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Goal.lifecycleStatus (token)
      i = 0;
      for (final entry
          in resource.lifecycleStatus.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.lifecycleStatus',
            i,
            searchName: 'lifecycle-status',
          ),
        );
        i++;
      }
      // Goal.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.GraphDefinition _:
      // GraphDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // GraphDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // GraphDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // GraphDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // GraphDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // GraphDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // GraphDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // GraphDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // GraphDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // GraphDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // GraphDefinition.start (token)
      i = 0;
      for (final entry in resource.start.makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.start',
            i,
            searchName: 'start',
          ),
        );
        i++;
      }
    case fhir.FhirGroup _:
      // Group.actual (token)
      i = 0;
      for (final entry in resource.actual.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.actual',
            i,
            searchName: 'actual',
          ),
        );
        i++;
      }
      // Group.characteristic.code (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.characteristic.code',
            i,
            searchName: 'characteristic',
          ),
        );
        i++;
      }
      // Group.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Group.characteristic.exclude (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.FhirBoolean?>((e) => e.exclude)
              .makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.characteristic.exclude',
            i,
            searchName: 'exclude',
          ),
        );
        i++;
      }
      // Group.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Group.managingEntity (reference)
      i = 0;
      for (final entry
          in resource.managingEntity?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.managingEntity',
            i,
            searchName: 'managing-entity',
          ),
        );
        i++;
      }
      // Group.member.entity (reference)
      i = 0;
      for (final entry in resource.member
              ?.map<fhir.Reference?>((e) => e.entity)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.member.entity',
            i,
            searchName: 'member',
          ),
        );
        i++;
      }
      // Group.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // Group.characteristic (composite)
      i = 0;
      for (final entry in resource.characteristic
              ?.makeIterable<fhir.GroupCharacteristic>() ??
          <fhir.GroupCharacteristic>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.characteristic',
            i,
            searchName: 'characteristic-value',
          ),
        );
        i++;
      }
    case fhir.GuidanceResponse _:
      // GuidanceResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // GuidanceResponse.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // GuidanceResponse.requestIdentifier (token)
      i = 0;
      for (final entry
          in resource.requestIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.requestIdentifier',
            i,
            searchName: 'request',
          ),
        );
        i++;
      }
      // GuidanceResponse.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.HealthcareService _:
      // HealthcareService.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // HealthcareService.characteristic (token)
      i = 0;
      for (final entry
          in resource.characteristic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.characteristic',
            i,
            searchName: 'characteristic',
          ),
        );
        i++;
      }
      // HealthcareService.coverageArea (reference)
      i = 0;
      for (final entry
          in resource.coverageArea?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.coverageArea',
            i,
            searchName: 'coverage-area',
          ),
        );
        i++;
      }
      // HealthcareService.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // HealthcareService.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // HealthcareService.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // HealthcareService.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // HealthcareService.providedBy (reference)
      i = 0;
      for (final entry in resource.providedBy?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.providedBy',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // HealthcareService.program (token)
      i = 0;
      for (final entry
          in resource.program?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.program',
            i,
            searchName: 'program',
          ),
        );
        i++;
      }
      // HealthcareService.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.category',
            i,
            searchName: 'service-category',
          ),
        );
        i++;
      }
      // HealthcareService.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.type',
            i,
            searchName: 'service-type',
          ),
        );
        i++;
      }
      // HealthcareService.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.specialty',
            i,
            searchName: 'specialty',
          ),
        );
        i++;
      }
    case fhir.ImagingStudy _:
      // ImagingStudy.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ImagingStudy.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ImagingStudy.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.basedOn',
            i,
            searchName: 'basedon',
          ),
        );
        i++;
      }
      // ImagingStudy.series.bodySite (token)
      i = 0;
      for (final entry in resource.series
              ?.map<fhir.Coding?>((e) => e.bodySite)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.bodySite',
            i,
            searchName: 'bodysite',
          ),
        );
        i++;
      }
      // ImagingStudy.series.instance.sopClass (token)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.instance ?? <fhir.ImagingStudyInstance>[])
              .map<fhir.Coding?>((e) => e.sopClass)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.instance.sopClass',
            i,
            searchName: 'dicom-class',
          ),
        );
        i++;
      }
      // ImagingStudy.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // ImagingStudy.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // ImagingStudy.series.endpoint (reference)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.endpoint ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // ImagingStudy.series.instance.uid (token)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.instance ?? <fhir.ImagingStudyInstance>[])
              .map<fhir.FhirId?>((e) => e.uid)
              .makeIterable<fhir.FhirId>() ??
          <fhir.FhirId>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.instance.uid',
            i,
            searchName: 'instance',
          ),
        );
        i++;
      }
      // ImagingStudy.interpreter (reference)
      i = 0;
      for (final entry
          in resource.interpreter?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.interpreter',
            i,
            searchName: 'interpreter',
          ),
        );
        i++;
      }
      // ImagingStudy.series.modality (token)
      i = 0;
      for (final entry in resource.series
              ?.map<fhir.Coding?>((e) => e.modality)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.modality',
            i,
            searchName: 'modality',
          ),
        );
        i++;
      }
      // ImagingStudy.series.performer.actor (reference)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.performer ?? <fhir.ImagingStudyPerformer>[])
              .map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.performer.actor',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // ImagingStudy.reasonCode (token)
      i = 0;
      for (final entry
          in resource.reasonCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.reasonCode',
            i,
            searchName: 'reason',
          ),
        );
        i++;
      }
      // ImagingStudy.referrer (reference)
      i = 0;
      for (final entry in resource.referrer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.referrer',
            i,
            searchName: 'referrer',
          ),
        );
        i++;
      }
      // ImagingStudy.series.uid (token)
      i = 0;
      for (final entry in resource.series
              ?.map<fhir.FhirId?>((e) => e.uid)
              .makeIterable<fhir.FhirId>() ??
          <fhir.FhirId>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.uid',
            i,
            searchName: 'series',
          ),
        );
        i++;
      }
      // ImagingStudy.started (date)
      i = 0;
      for (final entry in resource.started?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.started',
            i,
            searchName: 'started',
          ),
        );
        i++;
      }
      // ImagingStudy.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ImagingStudy.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.Immunization _:
      // Immunization.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Immunization.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Immunization.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // Immunization.lotNumber (string)
      i = 0;
      for (final entry in resource.lotNumber?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.lotNumber',
            i,
            searchName: 'lot-number',
          ),
        );
        i++;
      }
      // Immunization.manufacturer (reference)
      i = 0;
      for (final entry
          in resource.manufacturer?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.manufacturer',
            i,
            searchName: 'manufacturer',
          ),
        );
        i++;
      }
      // Immunization.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.performer.actor',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // Immunization.reaction.detail (reference)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.Reference?>((e) => e.detail)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reaction.detail',
            i,
            searchName: 'reaction',
          ),
        );
        i++;
      }
      // Immunization.reaction.date (date)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.FhirDateTime?>((e) => e.date)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reaction.date',
            i,
            searchName: 'reaction-date',
          ),
        );
        i++;
      }
      // Immunization.reasonCode (token)
      i = 0;
      for (final entry
          in resource.reasonCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reasonCode',
            i,
            searchName: 'reason-code',
          ),
        );
        i++;
      }
      // Immunization.reasonReference (reference)
      i = 0;
      for (final entry
          in resource.reasonReference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reasonReference',
            i,
            searchName: 'reason-reference',
          ),
        );
        i++;
      }
      // Immunization.protocolApplied.series (string)
      i = 0;
      for (final entry in resource.protocolApplied
              ?.map<fhir.FhirString?>((e) => e.series)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.protocolApplied.series',
            i,
            searchName: 'series',
          ),
        );
        i++;
      }
      // Immunization.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Immunization.statusReason (token)
      i = 0;
      for (final entry
          in resource.statusReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.statusReason',
            i,
            searchName: 'status-reason',
          ),
        );
        i++;
      }
      // Immunization.protocolApplied.targetDisease (token)
      i = 0;
      for (final entry in resource.protocolApplied
              ?.expand((e) => e.targetDisease ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.protocolApplied.targetDisease',
            i,
            searchName: 'target-disease',
          ),
        );
        i++;
      }
      // Immunization.vaccineCode (token)
      i = 0;
      for (final entry
          in resource.vaccineCode.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.vaccineCode',
            i,
            searchName: 'vaccine-code',
          ),
        );
        i++;
      }
    case fhir.ImmunizationEvaluation _:
      // ImmunizationEvaluation.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.doseStatus (token)
      i = 0;
      for (final entry
          in resource.doseStatus.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.doseStatus',
            i,
            searchName: 'dose-status',
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.immunizationEvent (reference)
      i = 0;
      for (final entry
          in resource.immunizationEvent.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.immunizationEvent',
            i,
            searchName: 'immunization-event',
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.targetDisease (token)
      i = 0;
      for (final entry
          in resource.targetDisease.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.targetDisease',
            i,
            searchName: 'target-disease',
          ),
        );
        i++;
      }
    case fhir.ImmunizationRecommendation _:
      // ImmunizationRecommendation.date (date)
      i = 0;
      for (final entry in resource.date.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.supportingPatientInformation (reference)
      i = 0;
      for (final entry in resource.recommendation
              .expand(
                (e) => e.supportingPatientInformation ?? <fhir.Reference>[],
              )
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.supportingPatientInformation',
            i,
            searchName: 'information',
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.forecastStatus (token)
      i = 0;
      for (final entry in resource.recommendation
              .map<fhir.CodeableConcept?>((e) => e.forecastStatus)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.forecastStatus',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.supportingImmunization (reference)
      i = 0;
      for (final entry in resource.recommendation
              .expand((e) => e.supportingImmunization ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.supportingImmunization',
            i,
            searchName: 'support',
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.targetDisease (token)
      i = 0;
      for (final entry in resource.recommendation
              .map<fhir.CodeableConcept?>((e) => e.targetDisease)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.targetDisease',
            i,
            searchName: 'target-disease',
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.vaccineCode (token)
      i = 0;
      for (final entry in resource.recommendation
              .expand((e) => e.vaccineCode ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.vaccineCode',
            i,
            searchName: 'vaccine-type',
          ),
        );
        i++;
      }
    case fhir.ImplementationGuide _:
      // ImplementationGuide.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ImplementationGuide.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ImplementationGuide.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // ImplementationGuide.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ImplementationGuide.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // ImplementationGuide.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ImplementationGuide.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ImplementationGuide.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // ImplementationGuide.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ImplementationGuide.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ImplementationGuide.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // ImplementationGuide.dependsOn.uri (reference)
      i = 0;
      for (final entry in resource.dependsOn
              ?.map<fhir.FhirCanonical?>((e) => e.uri)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.dependsOn.uri',
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // ImplementationGuide.experimental (token)
      i = 0;
      for (final entry
          in resource.experimental?.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.experimental',
            i,
            searchName: 'experimental',
          ),
        );
        i++;
      }
      // ImplementationGuide.global.profile (reference)
      i = 0;
      for (final entry in resource.global
              ?.map<fhir.FhirCanonical?>((e) => e.profile)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.global.profile',
            i,
            searchName: 'global',
          ),
        );
        i++;
      }
      // ImplementationGuide.definition.resource.reference (reference)
      i = 0;
      for (final entry in resource.definition?.resource
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.definition.resource.reference',
            i,
            searchName: 'resource',
          ),
        );
        i++;
      }
    case fhir.Ingredient _:
      // Ingredient.for (reference)
      i = 0;
      for (final entry in resource.for_?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.for',
            i,
            searchName: 'for',
          ),
        );
        i++;
      }
      // Ingredient.function (token)
      i = 0;
      for (final entry
          in resource.function_?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.function',
            i,
            searchName: 'function',
          ),
        );
        i++;
      }
      // Ingredient.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Ingredient.manufacturer (reference)
      i = 0;
      for (final entry in resource.manufacturer
              ?.makeIterable<fhir.IngredientManufacturer>() ??
          <fhir.IngredientManufacturer>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.manufacturer',
            i,
            searchName: 'manufacturer',
          ),
        );
        i++;
      }
      // Ingredient.role (token)
      i = 0;
      for (final entry in resource.role.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.role',
            i,
            searchName: 'role',
          ),
        );
        i++;
      }
      // Ingredient.substance.code.reference (reference)
      i = 0;
      for (final entry in resource.substance.code.reference
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.code.reference',
            i,
            searchName: 'substance-definition',
          ),
        );
        i++;
      }
      // Ingredient.substance.code.concept (token)
      i = 0;
      for (final entry in resource.substance.code.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.code.concept',
            i,
            searchName: 'substance-code',
          ),
        );
        i++;
      }
    case fhir.InsurancePlan _:
      // InsurancePlan.contact.address (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.contact.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // InsurancePlan.contact.address.city (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.contact.address.city',
            i,
            searchName: 'address-city',
          ),
        );
        i++;
      }
      // InsurancePlan.contact.address.country (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.contact.address.country',
            i,
            searchName: 'address-country',
          ),
        );
        i++;
      }
      // InsurancePlan.contact.address.postalCode (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.contact.address.postalCode',
            i,
            searchName: 'address-postalcode',
          ),
        );
        i++;
      }
      // InsurancePlan.contact.address.state (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.contact.address.state',
            i,
            searchName: 'address-state',
          ),
        );
        i++;
      }
      // InsurancePlan.contact.address.use (token)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirCodeEnum?>((e) => e?.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.contact.address.use',
            i,
            searchName: 'address-use',
          ),
        );
        i++;
      }
      // InsurancePlan.administeredBy (reference)
      i = 0;
      for (final entry
          in resource.administeredBy?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.administeredBy',
            i,
            searchName: 'administered-by',
          ),
        );
        i++;
      }
      // InsurancePlan.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // InsurancePlan.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // InsurancePlan.ownedBy (reference)
      i = 0;
      for (final entry in resource.ownedBy?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.ownedBy',
            i,
            searchName: 'owned-by',
          ),
        );
        i++;
      }
      // InsurancePlan.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.name',
            i,
            searchName: 'phonetic',
          ),
        );
        i++;
      }
      // InsurancePlan.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // InsurancePlan.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.Invoice _:
      // Invoice.account (reference)
      i = 0;
      for (final entry in resource.account?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.account',
            i,
            searchName: 'account',
          ),
        );
        i++;
      }
      // Invoice.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Invoice.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Invoice.issuer (reference)
      i = 0;
      for (final entry in resource.issuer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.issuer',
            i,
            searchName: 'issuer',
          ),
        );
        i++;
      }
      // Invoice.participant.actor (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.participant.actor',
            i,
            searchName: 'participant',
          ),
        );
        i++;
      }
      // Invoice.participant.role (token)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.CodeableConcept?>((e) => e.role)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.participant.role',
            i,
            searchName: 'participant-role',
          ),
        );
        i++;
      }
      // Invoice.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Invoice.recipient (reference)
      i = 0;
      for (final entry in resource.recipient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.recipient',
            i,
            searchName: 'recipient',
          ),
        );
        i++;
      }
      // Invoice.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Invoice.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Invoice.totalGross (quantity)
      i = 0;
      for (final entry in resource.totalGross?.makeIterable<fhir.Money>() ??
          <fhir.Money>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.totalGross',
            i,
            searchName: 'totalgross',
          ),
        );
        i++;
      }
      // Invoice.totalNet (quantity)
      i = 0;
      for (final entry
          in resource.totalNet?.makeIterable<fhir.Money>() ?? <fhir.Money>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.totalNet',
            i,
            searchName: 'totalnet',
          ),
        );
        i++;
      }
      // Invoice.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.Library _:
      // Library.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='composed-of').resource",
            i,
            searchName: 'composed-of',
          ),
        );
        i++;
      }
      // Library.content.contentType (token)
      i = 0;
      for (final entry in resource.content
              ?.map<fhir.FhirCode?>((e) => e.contentType)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.content.contentType',
            i,
            searchName: 'content-type',
          ),
        );
        i++;
      }
      // Library.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // Library.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='depends-on').resource",
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='derived-from').resource",
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // Library.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // Library.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // Library.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Library.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // Library.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='predecessor').resource",
            i,
            searchName: 'predecessor',
          ),
        );
        i++;
      }
      // Library.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // Library.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='successor').resource",
            i,
            searchName: 'successor',
          ),
        );
        i++;
      }
      // Library.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // Library.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.topic',
            i,
            searchName: 'topic',
          ),
        );
        i++;
      }
      // Library.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // Library.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // Library.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // Library.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.Linkage _:
      // Linkage.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Linkage.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // Linkage.item.resource (reference)
      i = 0;
      for (final entry in resource.item
              .map<fhir.Reference?>((e) => e.resource)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Linkage.item.resource',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
    case fhir.FhirList _:
      // List.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // List.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // List.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // List.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // List.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // List.emptyReason (token)
      i = 0;
      for (final entry
          in resource.emptyReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.emptyReason',
            i,
            searchName: 'empty-reason',
          ),
        );
        i++;
      }
      // List.entry.item (reference)
      i = 0;
      for (final entry in resource.entry
              ?.map<fhir.Reference?>((e) => e.item)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.entry.item',
            i,
            searchName: 'item',
          ),
        );
        i++;
      }
      // List.note.text (string)
      i = 0;
      for (final entry in resource.note
              ?.map<fhir.FhirMarkdown?>((e) => e.text)
              .makeIterable<fhir.FhirMarkdown>() ??
          <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.note.text',
            i,
            searchName: 'notes',
          ),
        );
        i++;
      }
      // List.source (reference)
      i = 0;
      for (final entry in resource.source?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.source',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
      // List.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // List.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // List.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
    case fhir.Location _:
      // Location.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // Location.address.city (string)
      i = 0;
      for (final entry
          in resource.address?.city?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.city',
            i,
            searchName: 'address-city',
          ),
        );
        i++;
      }
      // Location.address.country (string)
      i = 0;
      for (final entry
          in resource.address?.country?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.country',
            i,
            searchName: 'address-country',
          ),
        );
        i++;
      }
      // Location.address.postalCode (string)
      i = 0;
      for (final entry
          in resource.address?.postalCode?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.postalCode',
            i,
            searchName: 'address-postalcode',
          ),
        );
        i++;
      }
      // Location.address.state (string)
      i = 0;
      for (final entry
          in resource.address?.state?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.state',
            i,
            searchName: 'address-state',
          ),
        );
        i++;
      }
      // Location.address.use (token)
      i = 0;
      for (final entry
          in resource.address?.use?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.use',
            i,
            searchName: 'address-use',
          ),
        );
        i++;
      }
      // Location.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // Location.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Location.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Location.alias (string)
      i = 0;
      for (final entry in resource.alias?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.alias',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Location.position (special)
      i = 0;
      for (final entry
          in resource.position?.makeIterable<fhir.LocationPosition>() ??
              <fhir.LocationPosition>[]) {
        searchParameterLists.specialParams.addAll(
          entry.toSpecialSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.position',
            i,
            searchName: 'near',
          ),
        );
        i++;
      }
      // Location.operationalStatus (token)
      i = 0;
      for (final entry
          in resource.operationalStatus?.makeIterable<fhir.Coding>() ??
              <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.operationalStatus',
            i,
            searchName: 'operational-status',
          ),
        );
        i++;
      }
      // Location.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.managingOrganization',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // Location.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.partOf',
            i,
            searchName: 'partof',
          ),
        );
        i++;
      }
      // Location.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Location.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.ManufacturedItemDefinition _:
      // ManufacturedItemDefinition.manufacturedDoseForm (token)
      i = 0;
      for (final entry in resource.manufacturedDoseForm
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.manufacturedDoseForm',
            i,
            searchName: 'dose-form',
          ),
        );
        i++;
      }
      // ManufacturedItemDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ManufacturedItemDefinition.ingredient (token)
      i = 0;
      for (final entry
          in resource.ingredient?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.ingredient',
            i,
            searchName: 'ingredient',
          ),
        );
        i++;
      }
    case fhir.Measure _:
      // Measure.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='composed-of').resource",
            i,
            searchName: 'composed-of',
          ),
        );
        i++;
      }
      // Measure.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // Measure.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='depends-on').resource",
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // Measure.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.library',
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='derived-from').resource",
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // Measure.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // Measure.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // Measure.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Measure.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // Measure.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='predecessor').resource",
            i,
            searchName: 'predecessor',
          ),
        );
        i++;
      }
      // Measure.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // Measure.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='successor').resource",
            i,
            searchName: 'successor',
          ),
        );
        i++;
      }
      // Measure.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // Measure.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.topic',
            i,
            searchName: 'topic',
          ),
        );
        i++;
      }
      // Measure.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // Measure.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // Measure.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.MeasureReport _:
      // MeasureReport.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // MeasureReport.evaluatedResource (reference)
      i = 0;
      for (final entry
          in resource.evaluatedResource?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.evaluatedResource',
            i,
            searchName: 'evaluated-resource',
          ),
        );
        i++;
      }
      // MeasureReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MeasureReport.measure (reference)
      i = 0;
      for (final entry in resource.measure.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.measure',
            i,
            searchName: 'measure',
          ),
        );
        i++;
      }
      // MeasureReport.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // MeasureReport.period (date)
      i = 0;
      for (final entry
          in resource.period.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.period',
            i,
            searchName: 'period',
          ),
        );
        i++;
      }
      // MeasureReport.reporter (reference)
      i = 0;
      for (final entry in resource.reporter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.reporter',
            i,
            searchName: 'reporter',
          ),
        );
        i++;
      }
      // MeasureReport.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // MeasureReport.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.Media _:
      // Media.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // Media.created (date)
      i = 0;
      for (final entry
          in resource.createdX?.makeIterable<fhir.CreatedXMedia>() ??
              <fhir.CreatedXMedia>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // Media.device (reference)
      i = 0;
      for (final entry in resource.device?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.device',
            i,
            searchName: 'device',
          ),
        );
        i++;
      }
      // Media.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Media.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Media.modality (token)
      i = 0;
      for (final entry
          in resource.modality?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.modality',
            i,
            searchName: 'modality',
          ),
        );
        i++;
      }
      // Media.operator (reference)
      i = 0;
      for (final entry in resource.operator_?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.operator',
            i,
            searchName: 'operator',
          ),
        );
        i++;
      }
      // Media.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Media.bodySite (token)
      i = 0;
      for (final entry
          in resource.bodySite?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.bodySite',
            i,
            searchName: 'site',
          ),
        );
        i++;
      }
      // Media.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Media.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Media.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // Media.view (token)
      i = 0;
      for (final entry in resource.view?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Media.view',
            i,
            searchName: 'view',
          ),
        );
        i++;
      }
    case fhir.Medication _:
      // Medication.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Medication.batch.expirationDate (date)
      i = 0;
      for (final entry in resource.batch?.expirationDate
              ?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.batch.expirationDate',
            i,
            searchName: 'expiration-date',
          ),
        );
        i++;
      }
      // Medication.form (token)
      i = 0;
      for (final entry in resource.form?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.form',
            i,
            searchName: 'form',
          ),
        );
        i++;
      }
      // Medication.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Medication.batch.lotNumber (token)
      i = 0;
      for (final entry
          in resource.batch?.lotNumber?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.batch.lotNumber',
            i,
            searchName: 'lot-number',
          ),
        );
        i++;
      }
      // Medication.manufacturer (reference)
      i = 0;
      for (final entry
          in resource.manufacturer?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.manufacturer',
            i,
            searchName: 'manufacturer',
          ),
        );
        i++;
      }
      // Medication.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.MedicationAdministration _:
      // MedicationAdministration.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MedicationAdministration.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // MedicationAdministration.context (reference)
      i = 0;
      for (final entry in resource.context?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.context',
            i,
            searchName: 'context',
          ),
        );
        i++;
      }
      // MedicationAdministration.device (reference)
      i = 0;
      for (final entry in resource.device?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.device',
            i,
            searchName: 'device',
          ),
        );
        i++;
      }
      // MedicationAdministration.effective (date)
      i = 0;
      for (final entry in resource.effectiveX
              .makeIterable<fhir.EffectiveXMedicationAdministration>() ??
          <fhir.EffectiveXMedicationAdministration>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.effective',
            i,
            searchName: 'effective-time',
          ),
        );
        i++;
      }
      // MedicationAdministration.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.performer.actor',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // MedicationAdministration.reasonCode (token)
      i = 0;
      for (final entry
          in resource.reasonCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.reasonCode',
            i,
            searchName: 'reason-given',
          ),
        );
        i++;
      }
      // MedicationAdministration.statusReason (token)
      i = 0;
      for (final entry
          in resource.statusReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.statusReason',
            i,
            searchName: 'reason-not-given',
          ),
        );
        i++;
      }
      // MedicationAdministration.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.request',
            i,
            searchName: 'request',
          ),
        );
        i++;
      }
      // MedicationAdministration.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // MedicationAdministration.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.MedicationDispense _:
      // MedicationDispense.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MedicationDispense.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // MedicationDispense.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // MedicationDispense.context (reference)
      i = 0;
      for (final entry in resource.context?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.context',
            i,
            searchName: 'context',
          ),
        );
        i++;
      }
      // MedicationDispense.destination (reference)
      i = 0;
      for (final entry
          in resource.destination?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.destination',
            i,
            searchName: 'destination',
          ),
        );
        i++;
      }
      // MedicationDispense.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.performer.actor',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // MedicationDispense.authorizingPrescription (reference)
      i = 0;
      for (final entry
          in resource.authorizingPrescription?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.authorizingPrescription',
            i,
            searchName: 'prescription',
          ),
        );
        i++;
      }
      // MedicationDispense.receiver (reference)
      i = 0;
      for (final entry in resource.receiver?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.receiver',
            i,
            searchName: 'receiver',
          ),
        );
        i++;
      }
      // MedicationDispense.substitution.responsibleParty (reference)
      i = 0;
      for (final entry in resource.substitution?.responsibleParty
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.substitution.responsibleParty',
            i,
            searchName: 'responsibleparty',
          ),
        );
        i++;
      }
      // MedicationDispense.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // MedicationDispense.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // MedicationDispense.whenHandedOver (date)
      i = 0;
      for (final entry
          in resource.whenHandedOver?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.whenHandedOver',
            i,
            searchName: 'whenhandedover',
          ),
        );
        i++;
      }
      // MedicationDispense.whenPrepared (date)
      i = 0;
      for (final entry
          in resource.whenPrepared?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.whenPrepared',
            i,
            searchName: 'whenprepared',
          ),
        );
        i++;
      }
    case fhir.MedicationKnowledge _:
      // MedicationKnowledge.medicineClassification.classification (token)
      i = 0;
      for (final entry in resource.medicineClassification
              ?.expand((e) => e.classification ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.medicineClassification.classification',
            i,
            searchName: 'classification',
          ),
        );
        i++;
      }
      // MedicationKnowledge.medicineClassification.type (token)
      i = 0;
      for (final entry in resource.medicineClassification
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.medicineClassification.type',
            i,
            searchName: 'classification-type',
          ),
        );
        i++;
      }
      // MedicationKnowledge.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // MedicationKnowledge.doseForm (token)
      i = 0;
      for (final entry
          in resource.doseForm?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.doseForm',
            i,
            searchName: 'doseform',
          ),
        );
        i++;
      }
      // MedicationKnowledge.manufacturer (reference)
      i = 0;
      for (final entry
          in resource.manufacturer?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.manufacturer',
            i,
            searchName: 'manufacturer',
          ),
        );
        i++;
      }
      // MedicationKnowledge.monitoringProgram.name (token)
      i = 0;
      for (final entry in resource.monitoringProgram
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monitoringProgram.name',
            i,
            searchName: 'monitoring-program-name',
          ),
        );
        i++;
      }
      // MedicationKnowledge.monitoringProgram.type (token)
      i = 0;
      for (final entry in resource.monitoringProgram
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monitoringProgram.type',
            i,
            searchName: 'monitoring-program-type',
          ),
        );
        i++;
      }
      // MedicationKnowledge.monograph.source (reference)
      i = 0;
      for (final entry in resource.monograph
              ?.map<fhir.Reference?>((e) => e.source)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monograph.source',
            i,
            searchName: 'monograph',
          ),
        );
        i++;
      }
      // MedicationKnowledge.monograph.type (token)
      i = 0;
      for (final entry in resource.monograph
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monograph.type',
            i,
            searchName: 'monograph-type',
          ),
        );
        i++;
      }
      // MedicationKnowledge.cost.source (token)
      i = 0;
      for (final entry in resource.cost
              ?.map<fhir.FhirString?>((e) => e.source)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.cost.source',
            i,
            searchName: 'source-cost',
          ),
        );
        i++;
      }
      // MedicationKnowledge.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.MedicationRequest _:
      // MedicationRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MedicationRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // MedicationRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // MedicationRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.authoredOn',
            i,
            searchName: 'authoredon',
          ),
        );
        i++;
      }
      // MedicationRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // MedicationRequest.dosageInstruction.timing.event (date)
      i = 0;
      for (final entry in resource.dosageInstruction
              ?.map<fhir.Timing?>((e) => e.timing)
              .expand((e) => e?.event ?? <fhir.FhirDateTime>[])
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.dosageInstruction.timing.event',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // MedicationRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // MedicationRequest.dispenseRequest.performer (reference)
      i = 0;
      for (final entry in resource.dispenseRequest?.performer
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.dispenseRequest.performer',
            i,
            searchName: 'intended-dispenser',
          ),
        );
        i++;
      }
      // MedicationRequest.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.performer',
            i,
            searchName: 'intended-performer',
          ),
        );
        i++;
      }
      // MedicationRequest.performerType (token)
      i = 0;
      for (final entry
          in resource.performerType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.performerType',
            i,
            searchName: 'intended-performertype',
          ),
        );
        i++;
      }
      // MedicationRequest.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.intent',
            i,
            searchName: 'intent',
          ),
        );
        i++;
      }
      // MedicationRequest.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.priority',
            i,
            searchName: 'priority',
          ),
        );
        i++;
      }
      // MedicationRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.requester',
            i,
            searchName: 'requester',
          ),
        );
        i++;
      }
      // MedicationRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.MedicationStatement _:
      // MedicationStatement.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MedicationStatement.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // MedicationStatement.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // MedicationStatement.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // MedicationStatement.context (reference)
      i = 0;
      for (final entry in resource.context?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.context',
            i,
            searchName: 'context',
          ),
        );
        i++;
      }
      // MedicationStatement.effective (date)
      i = 0;
      for (final entry in resource.effectiveX
              ?.makeIterable<fhir.EffectiveXMedicationStatement>() ??
          <fhir.EffectiveXMedicationStatement>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.effective',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // MedicationStatement.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // MedicationStatement.informationSource (reference)
      i = 0;
      for (final entry
          in resource.informationSource?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.informationSource',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
      // MedicationStatement.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.MedicinalProductDefinition _:
      // MedicinalProductDefinition.characteristic.value (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.ValueXMedicinalProductDefinitionCharacteristic?>(
                (e) => e.valueX,
              )
              .makeIterable<
                  fhir.ValueXMedicinalProductDefinitionCharacteristic>() ??
          <fhir.ValueXMedicinalProductDefinitionCharacteristic>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.characteristic.value',
            i,
            searchName: 'characteristic',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.characteristic.type (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.characteristic.type',
            i,
            searchName: 'characteristic-type',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.contact.contact (reference)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Reference?>((e) => e.contact)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.contact.contact',
            i,
            searchName: 'contact',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.domain (token)
      i = 0;
      for (final entry
          in resource.domain?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.domain',
            i,
            searchName: 'domain',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.ingredient (token)
      i = 0;
      for (final entry
          in resource.ingredient?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.ingredient',
            i,
            searchName: 'ingredient',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.masterFile (reference)
      i = 0;
      for (final entry in resource.masterFile?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.masterFile',
            i,
            searchName: 'master-file',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.name.productName (string)
      i = 0;
      for (final entry in resource.name
              .map<fhir.FhirString?>((e) => e.productName)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.name.productName',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.name.countryLanguage.language (token)
      i = 0;
      for (final entry in resource.name
              .expand(
                (e) =>
                    e.countryLanguage ??
                    <fhir.MedicinalProductDefinitionCountryLanguage>[],
              )
              .map<fhir.CodeableConcept?>((e) => e.language)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.name.countryLanguage.language',
            i,
            searchName: 'name-language',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.classification (token)
      i = 0;
      for (final entry
          in resource.classification?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.classification',
            i,
            searchName: 'product-classification',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.status (token)
      i = 0;
      for (final entry
          in resource.status?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.MessageDefinition _:
      // MessageDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // MessageDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // MessageDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // MessageDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // MessageDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // MessageDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // MessageDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // MessageDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // MessageDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // MessageDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // MessageDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // MessageDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MessageDefinition.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // MessageDefinition.event (token)
      i = 0;
      for (final entry
          in resource.eventX.makeIterable<fhir.EventXMessageDefinition>() ??
              <fhir.EventXMessageDefinition>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.event',
            i,
            searchName: 'event',
          ),
        );
        i++;
      }
      // MessageDefinition.focus.code (token)
      i = 0;
      for (final entry in resource.focus
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.focus.code',
            i,
            searchName: 'focus',
          ),
        );
        i++;
      }
      // MessageDefinition.parent (reference)
      i = 0;
      for (final entry in resource.parent?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.parent',
            i,
            searchName: 'parent',
          ),
        );
        i++;
      }
    case fhir.MessageHeader _:
      // MessageHeader.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // MessageHeader.response.code (token)
      i = 0;
      for (final entry
          in resource.response?.code.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.response.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // MessageHeader.destination.name (string)
      i = 0;
      for (final entry in resource.destination
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.destination.name',
            i,
            searchName: 'destination',
          ),
        );
        i++;
      }
      // MessageHeader.destination.endpoint (uri)
      i = 0;
      for (final entry in resource.destination
              ?.map<fhir.FhirUrl?>((e) => e.endpoint)
              .makeIterable<fhir.FhirUrl>() ??
          <fhir.FhirUrl>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.destination.endpoint',
            i,
            searchName: 'destination-uri',
          ),
        );
        i++;
      }
      // MessageHeader.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.enterer',
            i,
            searchName: 'enterer',
          ),
        );
        i++;
      }
      // MessageHeader.event (token)
      i = 0;
      for (final entry
          in resource.eventX.makeIterable<fhir.EventXMessageHeader>() ??
              <fhir.EventXMessageHeader>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.event',
            i,
            searchName: 'event',
          ),
        );
        i++;
      }
      // MessageHeader.focus (reference)
      i = 0;
      for (final entry in resource.focus?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.focus',
            i,
            searchName: 'focus',
          ),
        );
        i++;
      }
      // MessageHeader.destination.receiver (reference)
      i = 0;
      for (final entry in resource.destination
              ?.map<fhir.Reference?>((e) => e.receiver)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.destination.receiver',
            i,
            searchName: 'receiver',
          ),
        );
        i++;
      }
      // MessageHeader.response.identifier (token)
      i = 0;
      for (final entry
          in resource.response?.identifier.makeIterable<fhir.FhirId>() ??
              <fhir.FhirId>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.response.identifier',
            i,
            searchName: 'response-id',
          ),
        );
        i++;
      }
      // MessageHeader.responsible (reference)
      i = 0;
      for (final entry
          in resource.responsible?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.responsible',
            i,
            searchName: 'responsible',
          ),
        );
        i++;
      }
      // MessageHeader.sender (reference)
      i = 0;
      for (final entry in resource.sender?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.sender',
            i,
            searchName: 'sender',
          ),
        );
        i++;
      }
      // MessageHeader.source.name (string)
      i = 0;
      for (final entry
          in resource.source.name?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.source.name',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
      // MessageHeader.source.endpoint (uri)
      i = 0;
      for (final entry
          in resource.source.endpoint.makeIterable<fhir.FhirUrl>() ??
              <fhir.FhirUrl>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.source.endpoint',
            i,
            searchName: 'source-uri',
          ),
        );
        i++;
      }
      // MessageHeader.destination.target (reference)
      i = 0;
      for (final entry in resource.destination
              ?.map<fhir.Reference?>((e) => e.target)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.destination.target',
            i,
            searchName: 'target',
          ),
        );
        i++;
      }
    case fhir.MolecularSequence _:
      // MolecularSequence.referenceSeq.chromosome (token)
      i = 0;
      for (final entry in resource.referenceSeq?.chromosome
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.referenceSeq.chromosome',
            i,
            searchName: 'chromosome',
          ),
        );
        i++;
      }
      // MolecularSequence.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // MolecularSequence.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // MolecularSequence.referenceSeq.referenceSeqId (token)
      i = 0;
      for (final entry in resource.referenceSeq?.referenceSeqId
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.referenceSeq.referenceSeqId',
            i,
            searchName: 'referenceseqid',
          ),
        );
        i++;
      }
      // MolecularSequence.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // MolecularSequence.variant.end (number)
      i = 0;
      for (final entry in resource.variant
              ?.map<fhir.FhirInteger?>((e) => e.end)
              .makeIterable<fhir.FhirInteger>() ??
          <fhir.FhirInteger>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.variant.end',
            i,
            searchName: 'variant-end',
          ),
        );
        i++;
      }
      // MolecularSequence.variant.start (number)
      i = 0;
      for (final entry in resource.variant
              ?.map<fhir.FhirInteger?>((e) => e.start)
              .makeIterable<fhir.FhirInteger>() ??
          <fhir.FhirInteger>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.variant.start',
            i,
            searchName: 'variant-start',
          ),
        );
        i++;
      }
      // MolecularSequence.referenceSeq.windowEnd (number)
      i = 0;
      for (final entry in resource.referenceSeq?.windowEnd
              ?.makeIterable<fhir.FhirInteger>() ??
          <fhir.FhirInteger>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.referenceSeq.windowEnd',
            i,
            searchName: 'window-end',
          ),
        );
        i++;
      }
      // MolecularSequence.referenceSeq.windowStart (number)
      i = 0;
      for (final entry in resource.referenceSeq?.windowStart
              ?.makeIterable<fhir.FhirInteger>() ??
          <fhir.FhirInteger>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.referenceSeq.windowStart',
            i,
            searchName: 'window-start',
          ),
        );
        i++;
      }
      // MolecularSequence.variant (composite)
      i = 0;
      for (final entry
          in resource.variant?.makeIterable<fhir.MolecularSequenceVariant>() ??
              <fhir.MolecularSequenceVariant>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.variant',
            i,
            searchName: 'referenceseqid-variant-coordinate',
          ),
        );
        i++;
      }
      // MolecularSequence.referenceSeq (composite)
      i = 0;
      for (final entry in resource.referenceSeq
              ?.makeIterable<fhir.MolecularSequenceReferenceSeq>() ??
          <fhir.MolecularSequenceReferenceSeq>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.referenceSeq',
            i,
            searchName: 'referenceseqid-window-coordinate',
          ),
        );
        i++;
      }
    case fhir.NamingSystem _:
      // NamingSystem.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // NamingSystem.date (date)
      i = 0;
      for (final entry in resource.date.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // NamingSystem.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // NamingSystem.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // NamingSystem.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // NamingSystem.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // NamingSystem.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // NamingSystem.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // NamingSystem.contact.name (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.contact.name',
            i,
            searchName: 'contact',
          ),
        );
        i++;
      }
      // NamingSystem.uniqueId.type (token)
      i = 0;
      for (final entry in resource.uniqueId
              .map<fhir.FhirCodeEnum?>((e) => e.type)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.uniqueId.type',
            i,
            searchName: 'id-type',
          ),
        );
        i++;
      }
      // NamingSystem.kind (token)
      i = 0;
      for (final entry in resource.kind.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.kind',
            i,
            searchName: 'kind',
          ),
        );
        i++;
      }
      // NamingSystem.uniqueId.period (date)
      i = 0;
      for (final entry in resource.uniqueId
              .map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.uniqueId.period',
            i,
            searchName: 'period',
          ),
        );
        i++;
      }
      // NamingSystem.responsible (string)
      i = 0;
      for (final entry
          in resource.responsible?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.responsible',
            i,
            searchName: 'responsible',
          ),
        );
        i++;
      }
      // NamingSystem.contact.telecom (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.contact.telecom',
            i,
            searchName: 'telecom',
          ),
        );
        i++;
      }
      // NamingSystem.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // NamingSystem.uniqueId.value (string)
      i = 0;
      for (final entry in resource.uniqueId
              .map<fhir.FhirString?>((e) => e.value)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.uniqueId.value',
            i,
            searchName: 'value',
          ),
        );
        i++;
      }
    case fhir.NutritionOrder _:
      // NutritionOrder.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // NutritionOrder.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // NutritionOrder.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // NutritionOrder.enteralFormula.additiveType (token)
      i = 0;
      for (final entry in resource.enteralFormula?.additiveType
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.enteralFormula.additiveType',
            i,
            searchName: 'additive',
          ),
        );
        i++;
      }
      // NutritionOrder.dateTime (date)
      i = 0;
      for (final entry in resource.dateTime.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.dateTime',
            i,
            searchName: 'datetime',
          ),
        );
        i++;
      }
      // NutritionOrder.enteralFormula.baseFormulaType (token)
      i = 0;
      for (final entry in resource.enteralFormula?.baseFormulaType
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.enteralFormula.baseFormulaType',
            i,
            searchName: 'formula',
          ),
        );
        i++;
      }
      // NutritionOrder.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // NutritionOrder.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // NutritionOrder.oralDiet.type (token)
      i = 0;
      for (final entry
          in resource.oralDiet?.type?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.oralDiet.type',
            i,
            searchName: 'oraldiet',
          ),
        );
        i++;
      }
      // NutritionOrder.orderer (reference)
      i = 0;
      for (final entry in resource.orderer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.orderer',
            i,
            searchName: 'provider',
          ),
        );
        i++;
      }
      // NutritionOrder.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // NutritionOrder.supplement.type (token)
      i = 0;
      for (final entry in resource.supplement
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.supplement.type',
            i,
            searchName: 'supplement',
          ),
        );
        i++;
      }
    case fhir.NutritionProduct _:
      // NutritionProduct.instance.identifier (token)
      i = 0;
      for (final entry
          in resource.instance?.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.instance.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // NutritionProduct.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.Observation _:
      // Observation.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.code',
            i,
            searchName: 'combo-code',
          ),
        );
        i++;
      }
      // Observation.effective (date)
      i = 0;
      for (final entry
          in resource.effectiveX?.makeIterable<fhir.EffectiveXObservation>() ??
              <fhir.EffectiveXObservation>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.effective',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Observation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Observation.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Observation.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Observation.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // Observation.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Observation.component.code (token)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.code',
            i,
            searchName: 'component-code',
          ),
        );
        i++;
      }
      // Observation.dataAbsentReason (token)
      i = 0;
      for (final entry
          in resource.dataAbsentReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.dataAbsentReason',
            i,
            searchName: 'data-absent-reason',
          ),
        );
        i++;
      }
      // Observation.component.dataAbsentReason (token)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.CodeableConcept?>((e) => e.dataAbsentReason)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.dataAbsentReason',
            i,
            searchName: 'component-data-absent-reason',
          ),
        );
        i++;
      }
      // Observation.derivedFrom (reference)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.derivedFrom',
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // Observation.device (reference)
      i = 0;
      for (final entry in resource.device?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.device',
            i,
            searchName: 'device',
          ),
        );
        i++;
      }
      // Observation.focus (reference)
      i = 0;
      for (final entry in resource.focus?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.focus',
            i,
            searchName: 'focus',
          ),
        );
        i++;
      }
      // Observation.hasMember (reference)
      i = 0;
      for (final entry in resource.hasMember?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.hasMember',
            i,
            searchName: 'has-member',
          ),
        );
        i++;
      }
      // Observation.method (token)
      i = 0;
      for (final entry
          in resource.method?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.method',
            i,
            searchName: 'method',
          ),
        );
        i++;
      }
      // Observation.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // Observation.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.performer',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // Observation.specimen (reference)
      i = 0;
      for (final entry in resource.specimen?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.specimen',
            i,
            searchName: 'specimen',
          ),
        );
        i++;
      }
      // Observation.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Observation.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Observation (composite)
      i = 0;
      for (final entry in resource.makeIterable<fhir.Observation>() ??
          <fhir.Observation>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation',
            i,
            searchName: 'combo-code-value-quantity',
          ),
        );
        i++;
      }
      // Observation.component (composite)
      i = 0;
      for (final entry
          in resource.component?.makeIterable<fhir.ObservationComponent>() ??
              <fhir.ObservationComponent>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component',
            i,
            searchName: 'component-code-value-quantity',
          ),
        );
        i++;
      }
    case fhir.OperationDefinition _:
      // OperationDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // OperationDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // OperationDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // OperationDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // OperationDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // OperationDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // OperationDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // OperationDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // OperationDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // OperationDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // OperationDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // OperationDefinition.base (reference)
      i = 0;
      for (final entry in resource.base?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.base',
            i,
            searchName: 'base',
          ),
        );
        i++;
      }
      // OperationDefinition.code (token)
      i = 0;
      for (final entry
          in resource.code.makeIterable<fhir.FhirCode>() ?? <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // OperationDefinition.inputProfile (reference)
      i = 0;
      for (final entry
          in resource.inputProfile?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.inputProfile',
            i,
            searchName: 'input-profile',
          ),
        );
        i++;
      }
      // OperationDefinition.instance (token)
      i = 0;
      for (final entry in resource.instance.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.instance',
            i,
            searchName: 'instance',
          ),
        );
        i++;
      }
      // OperationDefinition.kind (token)
      i = 0;
      for (final entry in resource.kind.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.kind',
            i,
            searchName: 'kind',
          ),
        );
        i++;
      }
      // OperationDefinition.outputProfile (reference)
      i = 0;
      for (final entry
          in resource.outputProfile?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.outputProfile',
            i,
            searchName: 'output-profile',
          ),
        );
        i++;
      }
      // OperationDefinition.system (token)
      i = 0;
      for (final entry in resource.system.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.system',
            i,
            searchName: 'system',
          ),
        );
        i++;
      }
      // OperationDefinition.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.Organization _:
      // Organization.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // Organization.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // Organization.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.address.city',
            i,
            searchName: 'address-city',
          ),
        );
        i++;
      }
      // Organization.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.address.country',
            i,
            searchName: 'address-country',
          ),
        );
        i++;
      }
      // Organization.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.address.postalCode',
            i,
            searchName: 'address-postalcode',
          ),
        );
        i++;
      }
      // Organization.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.address.state',
            i,
            searchName: 'address-state',
          ),
        );
        i++;
      }
      // Organization.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.address.use',
            i,
            searchName: 'address-use',
          ),
        );
        i++;
      }
      // Organization.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // Organization.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Organization.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.name',
            i,
            searchName: 'phonetic',
          ),
        );
        i++;
      }
      // Organization.alias (string)
      i = 0;
      for (final entry in resource.alias?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.alias',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Organization.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.partOf',
            i,
            searchName: 'partof',
          ),
        );
        i++;
      }
      // Organization.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.OrganizationAffiliation _:
      // OrganizationAffiliation.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "OrganizationAffiliation.telecom.where(system='email')",
            i,
            searchName: 'email',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.network (reference)
      i = 0;
      for (final entry in resource.network?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.network',
            i,
            searchName: 'network',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.participatingOrganization (reference)
      i = 0;
      for (final entry in resource.participatingOrganization
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.participatingOrganization',
            i,
            searchName: 'participating-organization',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "OrganizationAffiliation.telecom.where(system='phone')",
            i,
            searchName: 'phone',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.organization (reference)
      i = 0;
      for (final entry
          in resource.organization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.organization',
            i,
            searchName: 'primary-organization',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.code',
            i,
            searchName: 'role',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.healthcareService (reference)
      i = 0;
      for (final entry
          in resource.healthcareService?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.healthcareService',
            i,
            searchName: 'service',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.specialty',
            i,
            searchName: 'specialty',
          ),
        );
        i++;
      }
      // OrganizationAffiliation.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.telecom',
            i,
            searchName: 'telecom',
          ),
        );
        i++;
      }
    case fhir.PackagedProductDefinition _:
      // PackagedProductDefinition.package.containedItem.item.reference (reference)
      i = 0;
      for (final entry in resource.package?.containedItem
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.package.containedItem.item.reference',
            i,
            searchName: 'package',
          ),
        );
        i++;
      }
      // PackagedProductDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // PackagedProductDefinition.name (token)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // PackagedProductDefinition.packageFor (reference)
      i = 0;
      for (final entry in resource.packageFor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.packageFor',
            i,
            searchName: 'package-for',
          ),
        );
        i++;
      }
      // PackagedProductDefinition.status (token)
      i = 0;
      for (final entry
          in resource.status?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.Patient _:
      // Patient.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // Patient.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // Patient.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.city',
            i,
            searchName: 'address-city',
          ),
        );
        i++;
      }
      // Patient.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.country',
            i,
            searchName: 'address-country',
          ),
        );
        i++;
      }
      // Patient.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.postalCode',
            i,
            searchName: 'address-postalcode',
          ),
        );
        i++;
      }
      // Patient.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.state',
            i,
            searchName: 'address-state',
          ),
        );
        i++;
      }
      // Patient.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.use',
            i,
            searchName: 'address-use',
          ),
        );
        i++;
      }
      // Patient.birthDate (date)
      i = 0;
      for (final entry in resource.birthDate?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.birthDate',
            i,
            searchName: 'birthdate',
          ),
        );
        i++;
      }
      // Patient.deceased.exists() and Patient.deceased != false (token)
      i = 0;
      for (final entry in [
        fhir.FhirBoolean(
          resource.deceasedX != null &&
              (resource.deceasedBoolean?.valueBoolean ?? true),
        ),
      ]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.deceased.exists() and Patient.deceased != false',
            i,
            searchName: 'deceased',
          ),
        );
        i++;
      }
      // Patient.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Patient.telecom.where(system='email')",
            i,
            searchName: 'email',
          ),
        );
        i++;
      }
      // Patient.name.family (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.family)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.name.family',
            i,
            searchName: 'family',
          ),
        );
        i++;
      }
      // Patient.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.gender',
            i,
            searchName: 'gender',
          ),
        );
        i++;
      }
      // Patient.generalPractitioner (reference)
      i = 0;
      for (final entry
          in resource.generalPractitioner?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.generalPractitioner',
            i,
            searchName: 'general-practitioner',
          ),
        );
        i++;
      }
      // Patient.name.given (string)
      i = 0;
      for (final entry in resource.name
              ?.expand((e) => e.given ?? <fhir.FhirString>[])
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.name.given',
            i,
            searchName: 'given',
          ),
        );
        i++;
      }
      // Patient.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Patient.communication.language (token)
      i = 0;
      for (final entry in resource.communication
              ?.map<fhir.CodeableConcept?>((e) => e.language)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.communication.language',
            i,
            searchName: 'language',
          ),
        );
        i++;
      }
      // Patient.link.other (reference)
      i = 0;
      for (final entry in resource.link
              ?.map<fhir.Reference?>((e) => e.other)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.link.other',
            i,
            searchName: 'link',
          ),
        );
        i++;
      }
      // Patient.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.name',
            i,
            searchName: 'phonetic',
          ),
        );
        i++;
      }
      // Patient.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.managingOrganization',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // Patient.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Patient.telecom.where(system='phone')",
            i,
            searchName: 'phone',
          ),
        );
        i++;
      }
      // Patient.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.telecom',
            i,
            searchName: 'telecom',
          ),
        );
        i++;
      }
    case fhir.PaymentNotice _:
      // PaymentNotice.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // PaymentNotice.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // PaymentNotice.paymentStatus (token)
      i = 0;
      for (final entry
          in resource.paymentStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.paymentStatus',
            i,
            searchName: 'payment-status',
          ),
        );
        i++;
      }
      // PaymentNotice.provider (reference)
      i = 0;
      for (final entry in resource.provider?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.provider',
            i,
            searchName: 'provider',
          ),
        );
        i++;
      }
      // PaymentNotice.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.request',
            i,
            searchName: 'request',
          ),
        );
        i++;
      }
      // PaymentNotice.response (reference)
      i = 0;
      for (final entry in resource.response?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.response',
            i,
            searchName: 'response',
          ),
        );
        i++;
      }
      // PaymentNotice.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.PaymentReconciliation _:
      // PaymentReconciliation.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.created',
            i,
            searchName: 'created',
          ),
        );
        i++;
      }
      // PaymentReconciliation.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.disposition',
            i,
            searchName: 'disposition',
          ),
        );
        i++;
      }
      // PaymentReconciliation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // PaymentReconciliation.outcome (token)
      i = 0;
      for (final entry in resource.outcome?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.outcome',
            i,
            searchName: 'outcome',
          ),
        );
        i++;
      }
      // PaymentReconciliation.paymentIssuer (reference)
      i = 0;
      for (final entry
          in resource.paymentIssuer?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.paymentIssuer',
            i,
            searchName: 'payment-issuer',
          ),
        );
        i++;
      }
      // PaymentReconciliation.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.request',
            i,
            searchName: 'request',
          ),
        );
        i++;
      }
      // PaymentReconciliation.requestor (reference)
      i = 0;
      for (final entry in resource.requestor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.requestor',
            i,
            searchName: 'requestor',
          ),
        );
        i++;
      }
      // PaymentReconciliation.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.Person _:
      // Person.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // Person.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.city',
            i,
            searchName: 'address-city',
          ),
        );
        i++;
      }
      // Person.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.country',
            i,
            searchName: 'address-country',
          ),
        );
        i++;
      }
      // Person.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.postalCode',
            i,
            searchName: 'address-postalcode',
          ),
        );
        i++;
      }
      // Person.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.state',
            i,
            searchName: 'address-state',
          ),
        );
        i++;
      }
      // Person.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.use',
            i,
            searchName: 'address-use',
          ),
        );
        i++;
      }
      // Person.birthDate (date)
      i = 0;
      for (final entry in resource.birthDate?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.birthDate',
            i,
            searchName: 'birthdate',
          ),
        );
        i++;
      }
      // Person.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Person.telecom.where(system='email')",
            i,
            searchName: 'email',
          ),
        );
        i++;
      }
      // Person.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.gender',
            i,
            searchName: 'gender',
          ),
        );
        i++;
      }
      // Person.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Person.telecom.where(system='phone')",
            i,
            searchName: 'phone',
          ),
        );
        i++;
      }
      // Person.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Person.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.telecom',
            i,
            searchName: 'telecom',
          ),
        );
        i++;
      }
      // Person.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Person.link.target (reference)
      i = 0;
      for (final entry in resource.link
              ?.map<fhir.Reference?>((e) => e.target)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target',
            i,
            searchName: 'link',
          ),
        );
        i++;
      }
      // Person.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.managingOrganization',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // Person.link.target.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.link?.map<fhir.Reference?>((e) => e.target).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Person.link.target.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry
          in resource.link?.map<fhir.Reference?>((e) => e.target).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target.where(resolve() is Practitioner)',
            i,
            searchName: 'practitioner',
          ),
        );
        i++;
      }
      // Person.link.target.where(resolve() is RelatedPerson) (reference)
      i = 0;
      for (final entry
          in resource.link?.map<fhir.Reference?>((e) => e.target).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'RelatedPerson';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target.where(resolve() is RelatedPerson)',
            i,
            searchName: 'relatedperson',
          ),
        );
        i++;
      }
    case fhir.PlanDefinition _:
      // PlanDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
            searchName: 'composed-of',
          ),
        );
        i++;
      }
      // PlanDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // PlanDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // PlanDefinition.action.definition (reference)
      i = 0;
      for (final entry in resource.action
              ?.map<fhir.DefinitionXPlanDefinitionAction?>(
                (e) => e.definitionX,
              )
              .makeIterable<fhir.DefinitionXPlanDefinitionAction>() ??
          <fhir.DefinitionXPlanDefinitionAction>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.action.definition',
            i,
            searchName: 'definition',
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // PlanDefinition.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.library',
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // PlanDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // PlanDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // PlanDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // PlanDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // PlanDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
            searchName: 'predecessor',
          ),
        );
        i++;
      }
      // PlanDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // PlanDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='successor').resource",
            i,
            searchName: 'successor',
          ),
        );
        i++;
      }
      // PlanDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // PlanDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.topic',
            i,
            searchName: 'topic',
          ),
        );
        i++;
      }
      // PlanDefinition.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // PlanDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // PlanDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // PlanDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.Practitioner _:
      // Practitioner.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // Practitioner.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.city',
            i,
            searchName: 'address-city',
          ),
        );
        i++;
      }
      // Practitioner.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.country',
            i,
            searchName: 'address-country',
          ),
        );
        i++;
      }
      // Practitioner.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.postalCode',
            i,
            searchName: 'address-postalcode',
          ),
        );
        i++;
      }
      // Practitioner.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.state',
            i,
            searchName: 'address-state',
          ),
        );
        i++;
      }
      // Practitioner.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.use',
            i,
            searchName: 'address-use',
          ),
        );
        i++;
      }
      // Practitioner.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Practitioner.telecom.where(system='email')",
            i,
            searchName: 'email',
          ),
        );
        i++;
      }
      // Practitioner.name.family (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.family)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.name.family',
            i,
            searchName: 'family',
          ),
        );
        i++;
      }
      // Practitioner.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.gender',
            i,
            searchName: 'gender',
          ),
        );
        i++;
      }
      // Practitioner.name.given (string)
      i = 0;
      for (final entry in resource.name
              ?.expand((e) => e.given ?? <fhir.FhirString>[])
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.name.given',
            i,
            searchName: 'given',
          ),
        );
        i++;
      }
      // Practitioner.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Practitioner.telecom.where(system='phone')",
            i,
            searchName: 'phone',
          ),
        );
        i++;
      }
      // Practitioner.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Practitioner.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.telecom',
            i,
            searchName: 'telecom',
          ),
        );
        i++;
      }
      // Practitioner.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // Practitioner.communication (token)
      i = 0;
      for (final entry
          in resource.communication?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.communication',
            i,
            searchName: 'communication',
          ),
        );
        i++;
      }
      // Practitioner.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
    case fhir.PractitionerRole _:
      // PractitionerRole.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PractitionerRole.telecom.where(system='email')",
            i,
            searchName: 'email',
          ),
        );
        i++;
      }
      // PractitionerRole.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PractitionerRole.telecom.where(system='phone')",
            i,
            searchName: 'phone',
          ),
        );
        i++;
      }
      // PractitionerRole.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.telecom',
            i,
            searchName: 'telecom',
          ),
        );
        i++;
      }
      // PractitionerRole.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // PractitionerRole.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // PractitionerRole.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.endpoint',
            i,
            searchName: 'endpoint',
          ),
        );
        i++;
      }
      // PractitionerRole.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // PractitionerRole.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // PractitionerRole.organization (reference)
      i = 0;
      for (final entry
          in resource.organization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.organization',
            i,
            searchName: 'organization',
          ),
        );
        i++;
      }
      // PractitionerRole.practitioner (reference)
      i = 0;
      for (final entry
          in resource.practitioner?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.practitioner',
            i,
            searchName: 'practitioner',
          ),
        );
        i++;
      }
      // PractitionerRole.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.code',
            i,
            searchName: 'role',
          ),
        );
        i++;
      }
      // PractitionerRole.healthcareService (reference)
      i = 0;
      for (final entry
          in resource.healthcareService?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.healthcareService',
            i,
            searchName: 'service',
          ),
        );
        i++;
      }
      // PractitionerRole.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.specialty',
            i,
            searchName: 'specialty',
          ),
        );
        i++;
      }
    case fhir.Procedure _:
      // Procedure.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Procedure.performed (date)
      i = 0;
      for (final entry
          in resource.performedX?.makeIterable<fhir.PerformedXProcedure>() ??
              <fhir.PerformedXProcedure>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.performed',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Procedure.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Procedure.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Procedure.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Procedure.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // Procedure.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Procedure.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // Procedure.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // Procedure.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // Procedure.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // Procedure.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.performer.actor',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // Procedure.reasonCode (token)
      i = 0;
      for (final entry
          in resource.reasonCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.reasonCode',
            i,
            searchName: 'reason-code',
          ),
        );
        i++;
      }
      // Procedure.reasonReference (reference)
      i = 0;
      for (final entry
          in resource.reasonReference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.reasonReference',
            i,
            searchName: 'reason-reference',
          ),
        );
        i++;
      }
      // Procedure.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Procedure.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.Provenance _:
      // Provenance.agent.who (reference)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.Reference?>((e) => e.who)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.agent.who',
            i,
            searchName: 'agent',
          ),
        );
        i++;
      }
      // Provenance.agent.role (token)
      i = 0;
      for (final entry in resource.agent
              .expand((e) => e.role ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.agent.role',
            i,
            searchName: 'agent-role',
          ),
        );
        i++;
      }
      // Provenance.agent.type (token)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.agent.type',
            i,
            searchName: 'agent-type',
          ),
        );
        i++;
      }
      // Provenance.entity.what (reference)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.Reference?>((e) => e.what)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.entity.what',
            i,
            searchName: 'entity',
          ),
        );
        i++;
      }
      // Provenance.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // Provenance.target.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.target.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.target.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Provenance.recorded (date)
      i = 0;
      for (final entry in resource.recorded.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.recorded',
            i,
            searchName: 'recorded',
          ),
        );
        i++;
      }
      // Provenance.signature.type (token)
      i = 0;
      for (final entry in resource.signature
              ?.expand((e) => e.type ?? <fhir.Coding>[])
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.signature.type',
            i,
            searchName: 'signature-type',
          ),
        );
        i++;
      }
      // Provenance.target (reference)
      i = 0;
      for (final entry in resource.target.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.target',
            i,
            searchName: 'target',
          ),
        );
        i++;
      }
    case fhir.Questionnaire _:
      // Questionnaire.item.code (token)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.code ?? <fhir.Coding>[])
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.item.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Questionnaire.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // Questionnaire.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Questionnaire.item.definition (uri)
      i = 0;
      for (final entry in resource.item
              ?.map<fhir.FhirUri?>((e) => e.definition)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.item.definition',
            i,
            searchName: 'definition',
          ),
        );
        i++;
      }
      // Questionnaire.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // Questionnaire.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // Questionnaire.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Questionnaire.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // Questionnaire.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // Questionnaire.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // Questionnaire.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Questionnaire.subjectType (token)
      i = 0;
      for (final entry in resource.subjectType?.makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.subjectType',
            i,
            searchName: 'subject-type',
          ),
        );
        i++;
      }
      // Questionnaire.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // Questionnaire.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // Questionnaire.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // Questionnaire.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.QuestionnaireResponse _:
      // QuestionnaireResponse.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.authored (date)
      i = 0;
      for (final entry
          in resource.authored?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.authored',
            i,
            searchName: 'authored',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.questionnaire (reference)
      i = 0;
      for (final entry
          in resource.questionnaire?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.questionnaire',
            i,
            searchName: 'questionnaire',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.source (reference)
      i = 0;
      for (final entry in resource.source?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.source',
            i,
            searchName: 'source',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // QuestionnaireResponse.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.RegulatedAuthorization _:
      // RegulatedAuthorization.case.identifier (token)
      i = 0;
      for (final entry
          in resource.case_?.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.case.identifier',
            i,
            searchName: 'case',
          ),
        );
        i++;
      }
      // RegulatedAuthorization.case.type (token)
      i = 0;
      for (final entry
          in resource.case_?.type?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.case.type',
            i,
            searchName: 'case-type',
          ),
        );
        i++;
      }
      // RegulatedAuthorization.holder (reference)
      i = 0;
      for (final entry in resource.holder?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.holder',
            i,
            searchName: 'holder',
          ),
        );
        i++;
      }
      // RegulatedAuthorization.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // RegulatedAuthorization.region (token)
      i = 0;
      for (final entry
          in resource.region?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.region',
            i,
            searchName: 'region',
          ),
        );
        i++;
      }
      // RegulatedAuthorization.status (token)
      i = 0;
      for (final entry
          in resource.status?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // RegulatedAuthorization.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.RelatedPerson _:
      // RelatedPerson.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address',
            i,
            searchName: 'address',
          ),
        );
        i++;
      }
      // RelatedPerson.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.city',
            i,
            searchName: 'address-city',
          ),
        );
        i++;
      }
      // RelatedPerson.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.country',
            i,
            searchName: 'address-country',
          ),
        );
        i++;
      }
      // RelatedPerson.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.postalCode',
            i,
            searchName: 'address-postalcode',
          ),
        );
        i++;
      }
      // RelatedPerson.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.state',
            i,
            searchName: 'address-state',
          ),
        );
        i++;
      }
      // RelatedPerson.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.use',
            i,
            searchName: 'address-use',
          ),
        );
        i++;
      }
      // RelatedPerson.birthDate (date)
      i = 0;
      for (final entry in resource.birthDate?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.birthDate',
            i,
            searchName: 'birthdate',
          ),
        );
        i++;
      }
      // RelatedPerson.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "RelatedPerson.telecom.where(system='email')",
            i,
            searchName: 'email',
          ),
        );
        i++;
      }
      // RelatedPerson.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.gender',
            i,
            searchName: 'gender',
          ),
        );
        i++;
      }
      // RelatedPerson.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "RelatedPerson.telecom.where(system='phone')",
            i,
            searchName: 'phone',
          ),
        );
        i++;
      }
      // RelatedPerson.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // RelatedPerson.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.telecom',
            i,
            searchName: 'telecom',
          ),
        );
        i++;
      }
      // RelatedPerson.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // RelatedPerson.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // RelatedPerson.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // RelatedPerson.relationship (token)
      i = 0;
      for (final entry
          in resource.relationship?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.relationship',
            i,
            searchName: 'relationship',
          ),
        );
        i++;
      }
    case fhir.RequestGroup _:
      // RequestGroup.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.author',
            i,
            searchName: 'author',
          ),
        );
        i++;
      }
      // RequestGroup.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.authoredOn',
            i,
            searchName: 'authored',
          ),
        );
        i++;
      }
      // RequestGroup.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // RequestGroup.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // RequestGroup.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.groupIdentifier',
            i,
            searchName: 'group-identifier',
          ),
        );
        i++;
      }
      // RequestGroup.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // RequestGroup.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // RequestGroup.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // RequestGroup.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.intent',
            i,
            searchName: 'intent',
          ),
        );
        i++;
      }
      // RequestGroup.action.participant (reference)
      i = 0;
      for (final entry in resource.action
              ?.expand((e) => e.participant ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.action.participant',
            i,
            searchName: 'participant',
          ),
        );
        i++;
      }
      // RequestGroup.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // RequestGroup.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.priority',
            i,
            searchName: 'priority',
          ),
        );
        i++;
      }
      // RequestGroup.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // RequestGroup.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestGroup.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.ResearchDefinition _:
      // ResearchDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
            searchName: 'composed-of',
          ),
        );
        i++;
      }
      // ResearchDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ResearchDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ResearchDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // ResearchDefinition.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.library',
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // ResearchDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // ResearchDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // ResearchDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // ResearchDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ResearchDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ResearchDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // ResearchDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
            searchName: 'predecessor',
          ),
        );
        i++;
      }
      // ResearchDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ResearchDefinition.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ResearchDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchDefinition.relatedArtifact.where(type='successor').resource",
            i,
            searchName: 'successor',
          ),
        );
        i++;
      }
      // ResearchDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // ResearchDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.topic',
            i,
            searchName: 'topic',
          ),
        );
        i++;
      }
      // ResearchDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ResearchDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ResearchDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.ResearchElementDefinition _:
      // ResearchElementDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchElementDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
            searchName: 'composed-of',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchElementDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.library',
            i,
            searchName: 'depends-on',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchElementDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.effectivePeriod',
            i,
            searchName: 'effective',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchElementDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
            searchName: 'predecessor',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ResearchElementDefinition.relatedArtifact.where(type='successor').resource",
            i,
            searchName: 'successor',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.topic',
            i,
            searchName: 'topic',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ResearchElementDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchElementDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.ResearchStudy _:
      // ResearchStudy.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // ResearchStudy.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ResearchStudy.focus (token)
      i = 0;
      for (final entry
          in resource.focus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.focus',
            i,
            searchName: 'focus',
          ),
        );
        i++;
      }
      // ResearchStudy.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ResearchStudy.keyword (token)
      i = 0;
      for (final entry
          in resource.keyword?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.keyword',
            i,
            searchName: 'keyword',
          ),
        );
        i++;
      }
      // ResearchStudy.location (token)
      i = 0;
      for (final entry
          in resource.location?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.location',
            i,
            searchName: 'location',
          ),
        );
        i++;
      }
      // ResearchStudy.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.partOf',
            i,
            searchName: 'partof',
          ),
        );
        i++;
      }
      // ResearchStudy.principalInvestigator (reference)
      i = 0;
      for (final entry
          in resource.principalInvestigator?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.principalInvestigator',
            i,
            searchName: 'principalinvestigator',
          ),
        );
        i++;
      }
      // ResearchStudy.protocol (reference)
      i = 0;
      for (final entry in resource.protocol?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.protocol',
            i,
            searchName: 'protocol',
          ),
        );
        i++;
      }
      // ResearchStudy.site (reference)
      i = 0;
      for (final entry in resource.site?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.site',
            i,
            searchName: 'site',
          ),
        );
        i++;
      }
      // ResearchStudy.sponsor (reference)
      i = 0;
      for (final entry in resource.sponsor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.sponsor',
            i,
            searchName: 'sponsor',
          ),
        );
        i++;
      }
      // ResearchStudy.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ResearchStudy.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
    case fhir.ResearchSubject _:
      // ResearchSubject.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.period',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ResearchSubject.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ResearchSubject.individual (reference)
      i = 0;
      for (final entry in resource.individual.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.individual',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ResearchSubject.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ResearchSubject.study (reference)
      i = 0;
      for (final entry in resource.study.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.study',
            i,
            searchName: 'study',
          ),
        );
        i++;
      }
    case fhir.RiskAssessment _:
      // RiskAssessment.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // RiskAssessment.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // RiskAssessment.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // RiskAssessment.condition (reference)
      i = 0;
      for (final entry in resource.condition?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.condition',
            i,
            searchName: 'condition',
          ),
        );
        i++;
      }
      // RiskAssessment.method (token)
      i = 0;
      for (final entry
          in resource.method?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.method',
            i,
            searchName: 'method',
          ),
        );
        i++;
      }
      // RiskAssessment.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.performer',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // RiskAssessment.prediction.probability (number)
      i = 0;
      for (final entry in resource.prediction
              ?.map<fhir.ProbabilityXRiskAssessmentPrediction?>(
                (e) => e.probabilityX,
              )
              .makeIterable<fhir.ProbabilityXRiskAssessmentPrediction>() ??
          <fhir.ProbabilityXRiskAssessmentPrediction>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.prediction.probability',
            i,
            searchName: 'probability',
          ),
        );
        i++;
      }
      // RiskAssessment.prediction.qualitativeRisk (token)
      i = 0;
      for (final entry in resource.prediction
              ?.map<fhir.CodeableConcept?>((e) => e.qualitativeRisk)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.prediction.qualitativeRisk',
            i,
            searchName: 'risk',
          ),
        );
        i++;
      }
      // RiskAssessment.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.Schedule _:
      // Schedule.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.active',
            i,
            searchName: 'active',
          ),
        );
        i++;
      }
      // Schedule.actor (reference)
      i = 0;
      for (final entry in resource.actor.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.actor',
            i,
            searchName: 'actor',
          ),
        );
        i++;
      }
      // Schedule.planningHorizon (date)
      i = 0;
      for (final entry
          in resource.planningHorizon?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.planningHorizon',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // Schedule.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Schedule.serviceCategory (token)
      i = 0;
      for (final entry
          in resource.serviceCategory?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.serviceCategory',
            i,
            searchName: 'service-category',
          ),
        );
        i++;
      }
      // Schedule.serviceType (token)
      i = 0;
      for (final entry
          in resource.serviceType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.serviceType',
            i,
            searchName: 'service-type',
          ),
        );
        i++;
      }
      // Schedule.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.specialty',
            i,
            searchName: 'specialty',
          ),
        );
        i++;
      }
    case fhir.SearchParameter _:
      // SearchParameter.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // SearchParameter.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // SearchParameter.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // SearchParameter.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // SearchParameter.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // SearchParameter.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // SearchParameter.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // SearchParameter.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // SearchParameter.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // SearchParameter.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // SearchParameter.base (token)
      i = 0;
      for (final entry
          in resource.base.makeIterable<fhir.FhirCode>() ?? <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.base',
            i,
            searchName: 'base',
          ),
        );
        i++;
      }
      // SearchParameter.code (token)
      i = 0;
      for (final entry
          in resource.code.makeIterable<fhir.FhirCode>() ?? <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // SearchParameter.component.definition (reference)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.FhirCanonical?>((e) => e.definition)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.component.definition',
            i,
            searchName: 'component',
          ),
        );
        i++;
      }
      // SearchParameter.derivedFrom (reference)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.derivedFrom',
            i,
            searchName: 'derived-from',
          ),
        );
        i++;
      }
      // SearchParameter.target (token)
      i = 0;
      for (final entry in resource.target?.makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.target',
            i,
            searchName: 'target',
          ),
        );
        i++;
      }
      // SearchParameter.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.ServiceRequest _:
      // ServiceRequest.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // ServiceRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ServiceRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // ServiceRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // ServiceRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.authoredOn',
            i,
            searchName: 'authored',
          ),
        );
        i++;
      }
      // ServiceRequest.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // ServiceRequest.bodySite (token)
      i = 0;
      for (final entry
          in resource.bodySite?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.bodySite',
            i,
            searchName: 'body-site',
          ),
        );
        i++;
      }
      // ServiceRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // ServiceRequest.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.instantiatesCanonical',
            i,
            searchName: 'instantiates-canonical',
          ),
        );
        i++;
      }
      // ServiceRequest.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.instantiatesUri',
            i,
            searchName: 'instantiates-uri',
          ),
        );
        i++;
      }
      // ServiceRequest.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.intent',
            i,
            searchName: 'intent',
          ),
        );
        i++;
      }
      // ServiceRequest.occurrence (date)
      i = 0;
      for (final entry in resource.occurrenceX
              ?.makeIterable<fhir.OccurrenceXServiceRequest>() ??
          <fhir.OccurrenceXServiceRequest>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.occurrence',
            i,
            searchName: 'occurrence',
          ),
        );
        i++;
      }
      // ServiceRequest.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.performer',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // ServiceRequest.performerType (token)
      i = 0;
      for (final entry
          in resource.performerType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.performerType',
            i,
            searchName: 'performer-type',
          ),
        );
        i++;
      }
      // ServiceRequest.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.priority',
            i,
            searchName: 'priority',
          ),
        );
        i++;
      }
      // ServiceRequest.replaces (reference)
      i = 0;
      for (final entry in resource.replaces?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.replaces',
            i,
            searchName: 'replaces',
          ),
        );
        i++;
      }
      // ServiceRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.requester',
            i,
            searchName: 'requester',
          ),
        );
        i++;
      }
      // ServiceRequest.requisition (token)
      i = 0;
      for (final entry
          in resource.requisition?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.requisition',
            i,
            searchName: 'requisition',
          ),
        );
        i++;
      }
      // ServiceRequest.specimen (reference)
      i = 0;
      for (final entry in resource.specimen?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.specimen',
            i,
            searchName: 'specimen',
          ),
        );
        i++;
      }
      // ServiceRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ServiceRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.Slot _:
      // Slot.appointmentType (token)
      i = 0;
      for (final entry
          in resource.appointmentType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.appointmentType',
            i,
            searchName: 'appointment-type',
          ),
        );
        i++;
      }
      // Slot.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Slot.schedule (reference)
      i = 0;
      for (final entry in resource.schedule.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.schedule',
            i,
            searchName: 'schedule',
          ),
        );
        i++;
      }
      // Slot.serviceCategory (token)
      i = 0;
      for (final entry
          in resource.serviceCategory?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.serviceCategory',
            i,
            searchName: 'service-category',
          ),
        );
        i++;
      }
      // Slot.serviceType (token)
      i = 0;
      for (final entry
          in resource.serviceType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.serviceType',
            i,
            searchName: 'service-type',
          ),
        );
        i++;
      }
      // Slot.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.specialty',
            i,
            searchName: 'specialty',
          ),
        );
        i++;
      }
      // Slot.start (date)
      i = 0;
      for (final entry in resource.start.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.start',
            i,
            searchName: 'start',
          ),
        );
        i++;
      }
      // Slot.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.Specimen _:
      // Specimen.accessionIdentifier (token)
      i = 0;
      for (final entry
          in resource.accessionIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.accessionIdentifier',
            i,
            searchName: 'accession',
          ),
        );
        i++;
      }
      // Specimen.collection.bodySite (token)
      i = 0;
      for (final entry in resource.collection?.bodySite
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.bodySite',
            i,
            searchName: 'bodysite',
          ),
        );
        i++;
      }
      // Specimen.collection.collected (date)
      i = 0;
      for (final entry in resource.collection?.collectedX
              ?.makeIterable<fhir.CollectedXSpecimenCollection>() ??
          <fhir.CollectedXSpecimenCollection>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.collected',
            i,
            searchName: 'collected',
          ),
        );
        i++;
      }
      // Specimen.collection.collector (reference)
      i = 0;
      for (final entry
          in resource.collection?.collector?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.collector',
            i,
            searchName: 'collector',
          ),
        );
        i++;
      }
      // Specimen.container.type (token)
      i = 0;
      for (final entry in resource.container
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.container.type',
            i,
            searchName: 'container',
          ),
        );
        i++;
      }
      // Specimen.container.identifier (token)
      i = 0;
      for (final entry in resource.container
              ?.expand((e) => e.identifier ?? <fhir.Identifier>[])
              .makeIterable<fhir.Identifier>() ??
          <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.container.identifier',
            i,
            searchName: 'container-id',
          ),
        );
        i++;
      }
      // Specimen.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Specimen.parent (reference)
      i = 0;
      for (final entry in resource.parent?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.parent',
            i,
            searchName: 'parent',
          ),
        );
        i++;
      }
      // Specimen.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.subject.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Specimen.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Specimen.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.subject',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // Specimen.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.SpecimenDefinition _:
      // SpecimenDefinition.typeTested.container.type (token)
      i = 0;
      for (final entry in resource.typeTested
              ?.map<fhir.SpecimenDefinitionContainer?>((e) => e.container)
              .map<fhir.CodeableConcept?>((e) => e?.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.typeTested.container.type',
            i,
            searchName: 'container',
          ),
        );
        i++;
      }
      // SpecimenDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // SpecimenDefinition.typeCollected (token)
      i = 0;
      for (final entry
          in resource.typeCollected?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.typeCollected',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
    case fhir.StructureDefinition _:
      // StructureDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // StructureDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // StructureDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // StructureDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // StructureDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // StructureDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // StructureDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // StructureDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // StructureDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // StructureDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // StructureDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // StructureDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // StructureDefinition.abstract (token)
      i = 0;
      for (final entry in resource.abstract_.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.abstract',
            i,
            searchName: 'abstract',
          ),
        );
        i++;
      }
      // StructureDefinition.baseDefinition (reference)
      i = 0;
      for (final entry
          in resource.baseDefinition?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.baseDefinition',
            i,
            searchName: 'base',
          ),
        );
        i++;
      }
      // StructureDefinition.snapshot.element.base.path (token)
      i = 0;
      for (final entry in resource.snapshot?.element
              .map<fhir.ElementDefinitionBase?>((e) => e.base)
              .map<fhir.FhirString?>((e) => e?.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.snapshot.element.base.path',
            i,
            searchName: 'base-path',
          ),
        );
        i++;
      }
      // StructureDefinition.differential.element.base.path (token)
      i = 0;
      for (final entry in resource.differential?.element
              .map<fhir.ElementDefinitionBase?>((e) => e.base)
              .map<fhir.FhirString?>((e) => e?.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.differential.element.base.path',
            i,
            searchName: 'base-path',
          ),
        );
        i++;
      }
      // StructureDefinition.derivation (token)
      i = 0;
      for (final entry
          in resource.derivation?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.derivation',
            i,
            searchName: 'derivation',
          ),
        );
        i++;
      }
      // StructureDefinition.experimental (token)
      i = 0;
      for (final entry
          in resource.experimental?.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.experimental',
            i,
            searchName: 'experimental',
          ),
        );
        i++;
      }
      // StructureDefinition.context.type (token)
      i = 0;
      for (final entry in resource.context
              ?.map<fhir.FhirCodeEnum?>((e) => e.type)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.context.type',
            i,
            searchName: 'ext-context',
          ),
        );
        i++;
      }
      // StructureDefinition.keyword (token)
      i = 0;
      for (final entry
          in resource.keyword?.makeIterable<fhir.Coding>() ?? <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.keyword',
            i,
            searchName: 'keyword',
          ),
        );
        i++;
      }
      // StructureDefinition.kind (token)
      i = 0;
      for (final entry in resource.kind.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.kind',
            i,
            searchName: 'kind',
          ),
        );
        i++;
      }
      // StructureDefinition.snapshot.element.path (token)
      i = 0;
      for (final entry in resource.snapshot?.element
              .map<fhir.FhirString?>((e) => e.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.snapshot.element.path',
            i,
            searchName: 'path',
          ),
        );
        i++;
      }
      // StructureDefinition.differential.element.path (token)
      i = 0;
      for (final entry in resource.differential?.element
              .map<fhir.FhirString?>((e) => e.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.differential.element.path',
            i,
            searchName: 'path',
          ),
        );
        i++;
      }
      // StructureDefinition.type (uri)
      i = 0;
      for (final entry
          in resource.type.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // StructureDefinition.snapshot.element.binding.valueSet (reference)
      i = 0;
      for (final entry in resource.snapshot?.element
              .map<fhir.ElementDefinitionBinding?>((e) => e.binding)
              .map<fhir.FhirCanonical?>((e) => e?.valueSet)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.snapshot.element.binding.valueSet',
            i,
            searchName: 'valueset',
          ),
        );
        i++;
      }
    case fhir.StructureMap _:
      // StructureMap.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // StructureMap.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // StructureMap.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // StructureMap.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // StructureMap.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // StructureMap.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // StructureMap.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // StructureMap.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // StructureMap.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // StructureMap.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // StructureMap.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // StructureMap.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
    case fhir.Subscription _:
      // Subscription.contact (token)
      i = 0;
      for (final entry in resource.contact?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.contact',
            i,
            searchName: 'contact',
          ),
        );
        i++;
      }
      // Subscription.criteria (string)
      i = 0;
      for (final entry in resource.criteria.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.criteria',
            i,
            searchName: 'criteria',
          ),
        );
        i++;
      }
      // Subscription.channel.payload (token)
      i = 0;
      for (final entry
          in resource.channel.payload?.makeIterable<fhir.FhirCode>() ??
              <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.channel.payload',
            i,
            searchName: 'payload',
          ),
        );
        i++;
      }
      // Subscription.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Subscription.channel.type (token)
      i = 0;
      for (final entry
          in resource.channel.type.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.channel.type',
            i,
            searchName: 'type',
          ),
        );
        i++;
      }
      // Subscription.channel.endpoint (uri)
      i = 0;
      for (final entry
          in resource.channel.endpoint?.makeIterable<fhir.FhirUrl>() ??
              <fhir.FhirUrl>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.channel.endpoint',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
    case fhir.SubscriptionTopic _:
      // SubscriptionTopic.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // SubscriptionTopic.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // SubscriptionTopic.derivedFrom (uri)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.derivedFrom',
            i,
            searchName: 'derived-or-self',
          ),
        );
        i++;
      }
      // SubscriptionTopic.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // SubscriptionTopic.resourceTrigger.resource (uri)
      i = 0;
      for (final entry in resource.resourceTrigger
              ?.map<fhir.FhirUri?>((e) => e.resource)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.resourceTrigger.resource',
            i,
            searchName: 'resource',
          ),
        );
        i++;
      }
      // SubscriptionTopic.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // SubscriptionTopic.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // SubscriptionTopic.resourceTrigger.description (string)
      i = 0;
      for (final entry in resource.resourceTrigger
              ?.map<fhir.FhirMarkdown?>((e) => e.description)
              .makeIterable<fhir.FhirMarkdown>() ??
          <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.resourceTrigger.description',
            i,
            searchName: 'trigger-description',
          ),
        );
        i++;
      }
      // SubscriptionTopic.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
    case fhir.Substance _:
      // Substance.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // Substance.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Substance.instance.identifier (token)
      i = 0;
      for (final entry in resource.instance
              ?.map<fhir.Identifier?>((e) => e.identifier)
              .makeIterable<fhir.Identifier>() ??
          <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.instance.identifier',
            i,
            searchName: 'container-identifier',
          ),
        );
        i++;
      }
      // Substance.instance.expiry (date)
      i = 0;
      for (final entry in resource.instance
              ?.map<fhir.FhirDateTime?>((e) => e.expiry)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.instance.expiry',
            i,
            searchName: 'expiry',
          ),
        );
        i++;
      }
      // Substance.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Substance.instance.quantity (quantity)
      i = 0;
      for (final entry in resource.instance
              ?.map<fhir.Quantity?>((e) => e.quantity)
              .makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.instance.quantity',
            i,
            searchName: 'quantity',
          ),
        );
        i++;
      }
      // Substance.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
    case fhir.SubstanceDefinition _:
      // SubstanceDefinition.classification (token)
      i = 0;
      for (final entry
          in resource.classification?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.classification',
            i,
            searchName: 'classification',
          ),
        );
        i++;
      }
      // SubstanceDefinition.code.code (token)
      i = 0;
      for (final entry in resource.code
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.code.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // SubstanceDefinition.domain (token)
      i = 0;
      for (final entry
          in resource.domain?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.domain',
            i,
            searchName: 'domain',
          ),
        );
        i++;
      }
      // SubstanceDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // SubstanceDefinition.name.name (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.name.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
    case fhir.SupplyDelivery _:
      // SupplyDelivery.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // SupplyDelivery.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // SupplyDelivery.receiver (reference)
      i = 0;
      for (final entry in resource.receiver?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.receiver',
            i,
            searchName: 'receiver',
          ),
        );
        i++;
      }
      // SupplyDelivery.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // SupplyDelivery.supplier (reference)
      i = 0;
      for (final entry in resource.supplier?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.supplier',
            i,
            searchName: 'supplier',
          ),
        );
        i++;
      }
    case fhir.SupplyRequest _:
      // SupplyRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.authoredOn',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // SupplyRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // SupplyRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.category',
            i,
            searchName: 'category',
          ),
        );
        i++;
      }
      // SupplyRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.requester',
            i,
            searchName: 'requester',
          ),
        );
        i++;
      }
      // SupplyRequest.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // SupplyRequest.deliverTo (reference)
      i = 0;
      for (final entry in resource.deliverTo?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.deliverTo',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
      // SupplyRequest.supplier (reference)
      i = 0;
      for (final entry in resource.supplier?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.supplier',
            i,
            searchName: 'supplier',
          ),
        );
        i++;
      }
    case fhir.Task _:
      // Task.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.authoredOn',
            i,
            searchName: 'authored-on',
          ),
        );
        i++;
      }
      // Task.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.basedOn',
            i,
            searchName: 'based-on',
          ),
        );
        i++;
      }
      // Task.businessStatus (token)
      i = 0;
      for (final entry
          in resource.businessStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.businessStatus',
            i,
            searchName: 'business-status',
          ),
        );
        i++;
      }
      // Task.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // Task.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // Task.focus (reference)
      i = 0;
      for (final entry in resource.focus?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.focus',
            i,
            searchName: 'focus',
          ),
        );
        i++;
      }
      // Task.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.groupIdentifier',
            i,
            searchName: 'group-identifier',
          ),
        );
        i++;
      }
      // Task.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // Task.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.intent',
            i,
            searchName: 'intent',
          ),
        );
        i++;
      }
      // Task.lastModified (date)
      i = 0;
      for (final entry
          in resource.lastModified?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.lastModified',
            i,
            searchName: 'modified',
          ),
        );
        i++;
      }
      // Task.owner (reference)
      i = 0;
      for (final entry in resource.owner?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.owner',
            i,
            searchName: 'owner',
          ),
        );
        i++;
      }
      // Task.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.partOf',
            i,
            searchName: 'part-of',
          ),
        );
        i++;
      }
      // Task.for.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.for_?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.for.where(resolve() is Patient)',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // Task.performerType (token)
      i = 0;
      for (final entry
          in resource.performerType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.performerType',
            i,
            searchName: 'performer',
          ),
        );
        i++;
      }
      // Task.executionPeriod (date)
      i = 0;
      for (final entry
          in resource.executionPeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.executionPeriod',
            i,
            searchName: 'period',
          ),
        );
        i++;
      }
      // Task.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.priority',
            i,
            searchName: 'priority',
          ),
        );
        i++;
      }
      // Task.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.requester',
            i,
            searchName: 'requester',
          ),
        );
        i++;
      }
      // Task.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // Task.for (reference)
      i = 0;
      for (final entry in resource.for_?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.for',
            i,
            searchName: 'subject',
          ),
        );
        i++;
      }
    case fhir.TerminologyCapabilities _:
      // TerminologyCapabilities.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // TerminologyCapabilities.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.TestReport _:
      // TestReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // TestReport.issued (date)
      i = 0;
      for (final entry in resource.issued?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.issued',
            i,
            searchName: 'issued',
          ),
        );
        i++;
      }
      // TestReport.participant.uri (uri)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.FhirUri?>((e) => e.uri)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.participant.uri',
            i,
            searchName: 'participant',
          ),
        );
        i++;
      }
      // TestReport.result (token)
      i = 0;
      for (final entry in resource.result.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.result',
            i,
            searchName: 'result',
          ),
        );
        i++;
      }
      // TestReport.tester (string)
      i = 0;
      for (final entry in resource.tester?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.tester',
            i,
            searchName: 'tester',
          ),
        );
        i++;
      }
      // TestReport.testScript (reference)
      i = 0;
      for (final entry in resource.testScript.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.testScript',
            i,
            searchName: 'testscript',
          ),
        );
        i++;
      }
    case fhir.TestScript _:
      // TestScript.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // TestScript.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // TestScript.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // TestScript.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // TestScript.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // TestScript.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // TestScript.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // TestScript.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // TestScript.metadata.capability.description (string)
      i = 0;
      for (final entry in resource.metadata?.capability
              .map<fhir.FhirString?>((e) => e.description)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.metadata.capability.description',
            i,
            searchName: 'testscript-capability',
          ),
        );
        i++;
      }
      // TestScript.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // TestScript.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // TestScript.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // TestScript.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
    case fhir.ValueSet _:
      // ValueSet.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.useContext.code',
            i,
            searchName: 'context-type',
          ),
        );
        i++;
      }
      // ValueSet.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.date',
            i,
            searchName: 'date',
          ),
        );
        i++;
      }
      // ValueSet.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.description',
            i,
            searchName: 'description',
          ),
        );
        i++;
      }
      // ValueSet.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.jurisdiction',
            i,
            searchName: 'jurisdiction',
          ),
        );
        i++;
      }
      // ValueSet.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.name',
            i,
            searchName: 'name',
          ),
        );
        i++;
      }
      // ValueSet.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.publisher',
            i,
            searchName: 'publisher',
          ),
        );
        i++;
      }
      // ValueSet.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
      // ValueSet.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.title',
            i,
            searchName: 'title',
          ),
        );
        i++;
      }
      // ValueSet.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.url',
            i,
            searchName: 'url',
          ),
        );
        i++;
      }
      // ValueSet.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.version',
            i,
            searchName: 'version',
          ),
        );
        i++;
      }
      // ValueSet.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.useContext',
            i,
            searchName: 'context-type-value',
          ),
        );
        i++;
      }
      // ValueSet.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // ValueSet.expansion.contains.code (token)
      i = 0;
      for (final entry in resource.expansion?.contains
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.expansion.contains.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // ValueSet.compose.include.concept.code (token)
      i = 0;
      for (final entry in resource.compose?.include
              .expand((e) => e.concept ?? <fhir.ValueSetConcept>[])
              .map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.compose.include.concept.code',
            i,
            searchName: 'code',
          ),
        );
        i++;
      }
      // ValueSet.expansion.identifier (uri)
      i = 0;
      for (final entry
          in resource.expansion?.identifier?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.expansion.identifier',
            i,
            searchName: 'expansion',
          ),
        );
        i++;
      }
      // ValueSet.compose.include.system (uri)
      i = 0;
      for (final entry in resource.compose?.include
              .map<fhir.FhirUri?>((e) => e.system)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.compose.include.system',
            i,
            searchName: 'reference',
          ),
        );
        i++;
      }
    case fhir.VerificationResult _:
      // VerificationResult.target (reference)
      i = 0;
      for (final entry in resource.target?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.target',
            i,
            searchName: 'target',
          ),
        );
        i++;
      }
    case fhir.VisionPrescription _:
      // VisionPrescription.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.identifier',
            i,
            searchName: 'identifier',
          ),
        );
        i++;
      }
      // VisionPrescription.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.patient',
            i,
            searchName: 'patient',
          ),
        );
        i++;
      }
      // VisionPrescription.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.encounter',
            i,
            searchName: 'encounter',
          ),
        );
        i++;
      }
      // VisionPrescription.dateWritten (date)
      i = 0;
      for (final entry
          in resource.dateWritten.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.dateWritten',
            i,
            searchName: 'datewritten',
          ),
        );
        i++;
      }
      // VisionPrescription.prescriber (reference)
      i = 0;
      for (final entry in resource.prescriber.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.prescriber',
            i,
            searchName: 'prescriber',
          ),
        );
        i++;
      }
      // VisionPrescription.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.status',
            i,
            searchName: 'status',
          ),
        );
        i++;
      }
  }
  return searchParameterLists;
}

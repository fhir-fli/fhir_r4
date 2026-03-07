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
  final resourceType = resource.runtimeType.toString();
  final id = resource.id.toString();
  final lastUpdated = resource.meta!.lastUpdated!.valueDateTime!;
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
          ),
        );
        i++;
      }
      // Patient.deceased.exists() and Patient.deceased != false (token)
      i = 0;
      for (final entry in [
        fhir.FhirBoolean(
          resource.deceasedX != null &&
              resource.deceasedBoolean?.valueBoolean != false,
        ),
      ]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.deceased.exists() and Patient.deceased != false',
            i,
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
          ),
        );
        i++;
      }
  }
  return searchParameterLists;
}

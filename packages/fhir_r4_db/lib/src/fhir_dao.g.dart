// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fhir_dao.dart';

// ignore_for_file: type=lint
mixin _$FhirDaoMixin on DatabaseAccessor<FhirDb> {
  $ResourcesTable get resources => attachedDatabase.resources;
  $ResourcesHistoryTable get resourcesHistory =>
      attachedDatabase.resourcesHistory;
  $StringSearchParametersTable get stringSearchParameters =>
      attachedDatabase.stringSearchParameters;
  $TokenSearchParametersTable get tokenSearchParameters =>
      attachedDatabase.tokenSearchParameters;
  $ReferenceSearchParametersTable get referenceSearchParameters =>
      attachedDatabase.referenceSearchParameters;
  $DateSearchParametersTable get dateSearchParameters =>
      attachedDatabase.dateSearchParameters;
  $NumberSearchParametersTable get numberSearchParameters =>
      attachedDatabase.numberSearchParameters;
  $QuantitySearchParametersTable get quantitySearchParameters =>
      attachedDatabase.quantitySearchParameters;
  $UriSearchParametersTable get uriSearchParameters =>
      attachedDatabase.uriSearchParameters;
  $CompositeSearchParametersTable get compositeSearchParameters =>
      attachedDatabase.compositeSearchParameters;
  $SpecialSearchParametersTable get specialSearchParameters =>
      attachedDatabase.specialSearchParameters;
  $SyncResourcesTable get syncResources => attachedDatabase.syncResources;
  $CanonicalResourcesTable get canonicalResources =>
      attachedDatabase.canonicalResources;
  $GeneralStorageTable get generalStorage => attachedDatabase.generalStorage;
  FhirDaoManager get managers => FhirDaoManager(this);
}

class FhirDaoManager {
  final _$FhirDaoMixin _db;
  FhirDaoManager(this._db);
  $$ResourcesTableTableManager get resources =>
      $$ResourcesTableTableManager(_db.attachedDatabase, _db.resources);
  $$ResourcesHistoryTableTableManager get resourcesHistory =>
      $$ResourcesHistoryTableTableManager(
          _db.attachedDatabase, _db.resourcesHistory);
  $$StringSearchParametersTableTableManager get stringSearchParameters =>
      $$StringSearchParametersTableTableManager(
          _db.attachedDatabase, _db.stringSearchParameters);
  $$TokenSearchParametersTableTableManager get tokenSearchParameters =>
      $$TokenSearchParametersTableTableManager(
          _db.attachedDatabase, _db.tokenSearchParameters);
  $$ReferenceSearchParametersTableTableManager get referenceSearchParameters =>
      $$ReferenceSearchParametersTableTableManager(
          _db.attachedDatabase, _db.referenceSearchParameters);
  $$DateSearchParametersTableTableManager get dateSearchParameters =>
      $$DateSearchParametersTableTableManager(
          _db.attachedDatabase, _db.dateSearchParameters);
  $$NumberSearchParametersTableTableManager get numberSearchParameters =>
      $$NumberSearchParametersTableTableManager(
          _db.attachedDatabase, _db.numberSearchParameters);
  $$QuantitySearchParametersTableTableManager get quantitySearchParameters =>
      $$QuantitySearchParametersTableTableManager(
          _db.attachedDatabase, _db.quantitySearchParameters);
  $$UriSearchParametersTableTableManager get uriSearchParameters =>
      $$UriSearchParametersTableTableManager(
          _db.attachedDatabase, _db.uriSearchParameters);
  $$CompositeSearchParametersTableTableManager get compositeSearchParameters =>
      $$CompositeSearchParametersTableTableManager(
          _db.attachedDatabase, _db.compositeSearchParameters);
  $$SpecialSearchParametersTableTableManager get specialSearchParameters =>
      $$SpecialSearchParametersTableTableManager(
          _db.attachedDatabase, _db.specialSearchParameters);
  $$SyncResourcesTableTableManager get syncResources =>
      $$SyncResourcesTableTableManager(_db.attachedDatabase, _db.syncResources);
  $$CanonicalResourcesTableTableManager get canonicalResources =>
      $$CanonicalResourcesTableTableManager(
          _db.attachedDatabase, _db.canonicalResources);
  $$GeneralStorageTableTableManager get generalStorage =>
      $$GeneralStorageTableTableManager(
          _db.attachedDatabase, _db.generalStorage);
}

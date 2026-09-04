import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';

/// The index rows for a resource AND its contained resources.
///
/// R4B search §3.1.1.5.5: "By default, search results only include
/// resources that are not contained in other resources. A chained condition
/// will be evaluated inside contained resources." So a contained resource
/// is indexed, but under a type of its own — `#Medication` — that no plain
/// search names, with an id that carries its container:
/// `MedicationRequest/23#m1`. The container's reference to it (`#m1`) is
/// rewritten to point at that row, which is what lets
/// `MedicationRequest?medication.ingredient-code=abc` follow the chain into
/// the contained Medication while `Medication?ingredient-code=abc` does not
/// return it.
///
/// Contained resources cannot themselves contain resources, so one level.
SearchParameterLists extractWithContained(fhir.Resource resource) {
  final lists = updateSearchParameters(resource);
  if (resource is! fhir.DomainResource) return lists;
  final contained = resource.contained;
  if (contained == null || contained.isEmpty) return lists;

  final containerType = resource.resourceTypeString;
  final containerId = resource.id?.valueString;
  if (containerId == null) return lists;

  // Contained id → the type its rows are filed under.
  final containedTypes = <String, String>{};
  for (final inner in contained) {
    final innerId = inner.id?.valueString;
    if (innerId == null) continue;
    final type = '#${inner.resourceTypeString}';
    final id = '$containerType/$containerId#$innerId';
    containedTypes[innerId] = type;
    // The generated extractor needs meta.lastUpdated; a contained resource
    // has no meta of its own, so it borrows the container's.
    final withMeta = inner.meta?.lastUpdated == null
        ? inner.copyWith(
            meta: (inner.meta ?? const fhir.FhirMeta())
                .copyWith(lastUpdated: resource.meta?.lastUpdated),
          )
        : inner;
    final innerLists = updateSearchParameters(withMeta);
    lists
      ..stringParams.addAll([
        for (final r in innerLists.stringParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..tokenParams.addAll([
        for (final r in innerLists.tokenParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..referenceParams.addAll([
        for (final r in innerLists.referenceParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..dateParams.addAll([
        for (final r in innerLists.dateParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..numberParams.addAll([
        for (final r in innerLists.numberParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..quantityParams.addAll([
        for (final r in innerLists.quantityParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..uriParams.addAll([
        for (final r in innerLists.uriParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..compositeParams.addAll([
        for (final r in innerLists.compositeParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ])
      ..specialParams.addAll([
        for (final r in innerLists.specialParams)
          r.copyWith(resourceType: Value(type), id: Value(id)),
      ]);
  }

  // The container's `#m1` references now point at the contained rows.
  for (var i = 0; i < lists.referenceParams.length; i++) {
    final row = lists.referenceParams[i];
    final written = row.referenceValue.value;
    if (written == null || !written.startsWith('#')) continue;
    final type = containedTypes[written.substring(1)];
    if (type == null) continue;
    lists.referenceParams[i] = row.copyWith(
      referenceResourceType: Value(type),
      referenceIdPart: Value('$containerType/$containerId$written'),
    );
  }
  return lists;
}

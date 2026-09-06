/// The compartment context of a search: `[base]/[type]/[id]/[type]?…`.
///
/// R4B search.html 3.1.1.2: "GET [base]/[Compartment]/[id]/[type]{?[parameters]
/// {&_format=[mime-type]}}" searches "resources of a particular type that are
/// in the compartment" of the focal resource; compartmentdefinition.html says
/// which search parameters put a resource there. `FhirDao.search` and
/// `searchCount` take one of these and AND it with the query.
class CompartmentScope {
  /// The compartment of the [type] resource with logical id [id]:
  /// `CompartmentScope('Patient', '123')` for `Patient/123/Observation`.
  const CompartmentScope(this.type, this.id);

  /// The focal resource type, which is the compartment's code.
  final String type;

  /// The focal resource's logical id.
  final String id;

  @override
  String toString() => '$type/$id';
}

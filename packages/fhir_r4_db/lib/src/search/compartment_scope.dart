/// The compartment context of a search: `[base]/[type]/[id]/[type]?…`.
///
/// R4B search.html 3.1.1.2: "Search operations are executed in one of three
/// defined contexts that control which set of resources are being searched:
/// ... A specified compartment, perhaps with a specified resource type in
/// that compartment: GET [base]/Patient/[id]/[type]?parameter(s)".
/// CompartmentDefinition.resource.param is "The name of a search parameter
/// that represents the link to the compartment. More than one may be listed
/// because a resource may be linked to a compartment in more than one way".
/// `FhirDao.search` and `searchCount` take one of these and AND it with the
/// query.
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

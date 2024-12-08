// ignore_for_file: slash_for_doc_comments, public_member_api_docs

import 'package:fhir_r4/fhir_r4.dart';

/**
 * A child element or property defined by the FHIR specification This class is
 * defined as a helper class when iterating the children of an element in a
 * generic fashion
 * 
 * At present, iteration is only based on the specification, but this may be
 * changed to allow profile based expression at a later date
 * 
 * note: there's no point in creating one of these classes outside this package
 */
class Property {
  /**
   * Internal constructor
   */
  Property(
    this.name,
    this.typeCode,
    this.definition,
    this.minCardinality,
    this.maxCardinality,
    FhirBase? value,
  ) {
    if (value != null) {
      values.add(value);
    }
  }

  /**
   * Internal constructor
   */
  Property.values(
    this.name,
    this.typeCode,
    this.definition,
    this.minCardinality,
    this.maxCardinality,
    List<FhirBase>? values,
  ) {
    if (values != null) {
      this.values.addAll(values);
    }
  }

  /**
   * The name of the property as found in the FHIR specification
   */
  String name;

  /**
   * The type of the property as specified in the FHIR specification (e.g.
   * type|type|Reference(Name|Name)
   */
  String typeCode;

  /**
   * The formal definition of the element given in the FHIR specification
   */
  String definition;

  /**
   * The minimum allowed cardinality - 0 or 1 when based on the specification
   */
  int minCardinality;

  /**
   * The maximum allowed cardinality - 1 or MAX_INT when based on the
   * specification
   */
  int maxCardinality;

  /**
   * The actual elements that exist on this instance
   */
  List<FhirBase> values = <FhirBase>[];

  /**
   * For run time, if/once a property is hooked up to it's definition
   */
  StructureDefinition? structure;

  /**
   * @return The name of this property in the FHIR Specification
   */
  String getName() {
    return name;
  }

  /**
   * @return The stated type in the FHIR specification
   */
  String getTypeCode() {
    return typeCode;
  }

  /**
   * @return The definition of this element in the FHIR spec
   */
  String getDefinition() {
    return definition;
  }

  /**
   * @return the minimum cardinality for this element
   */
  int getMinCardinality() {
    return minCardinality;
  }

  /**
   * @return the maximum cardinality for this element
   */
  int getMaxCardinality() {
    return maxCardinality;
  }

  /**
   * @return the actual values - will only be 1 unless maximum cardinality ==
   *         MAX_INT
   */
  List<FhirBase?> getValues() {
    return values;
  }

  bool hasValues() => getValues().any((e) => e != null);

  StructureDefinition? getStructure() {
    return structure;
  }

  bool isList() {
    return maxCardinality > 1;
  }

  @override
  String toString() {
    return name;
  }
}

class PropertyMatcher {
  bool match(Property l, Property r) {
    return l.getName() == r.getName();
  }
}

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


// CqlCodeSystem type extending Vocabulary
class CqlCodeSystem extends CqlVocabulary {
  CqlCodeSystem({
    required super.id,
    required super.version,
    required super.name,
  });

  factory CqlCodeSystem.fromCodeSystem(CodeSystemRef cs) {
    return CqlCodeSystem(
      id: cs.localId ?? cs.type,
      version: cs.name,
      name: cs.name,
    );
  }

  factory CqlCodeSystem.fromJson(Map<String, dynamic> json) {
    return CqlCodeSystem(
      id: json['id'],
      version: json['version'],
      name: json['name'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['type'] = 'CodeSystem';
    return json;
  }

  // Static method to create a CqlCodeSystemInfo from a CqlCodeSystem
  static CqlCodeSystem fromCodeSystemRef(CodeSystemRef cs) {
    return CqlCodeSystem(
        id: cs.localId ?? cs.type, version: cs.name, name: cs.name);
  }

  // Getter for ID
  String? get getId => id;

  // Setter for ID
  set setId(String? id) {
    if (id != null) {
      this.id = id;
    }
  }

  // Fluent API for setting ID
  CqlCodeSystem withId(String id) {
    this.id = id;
    return this;
  }

  // Getter for version
  String? get getVersion => version;

  // Setter for version
  set setVersion(String? version) {
    if (version != null) {
      this.version = version;
    }
  }

  // Fluent API for setting version
  CqlCodeSystem withVersion(String version) {
    this.version = version;
    return this;
  }
}

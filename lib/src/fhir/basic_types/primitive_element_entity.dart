import 'package:objectbox/objectbox.dart';

import '../r4_entity.dart';

@Entity()
class PrimitiveElementEntity {
  @Id(assignable: true)
  int dbId = 0;

  /// [id] Unique id for the element within a resource (for internal references).

  /// [extension] May be used to represent additional information that is not part of the basic definition of the element.
  @ToMany()
final String? id;
final List<FhirExtensionEntity> extension_;
  const PrimitiveElementEntity({
    this.id,
    this.extension_,
  });

}


// ignore_for_file: public_member_api_docs

import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxResource {
  @Id()
  int? dbId;
}

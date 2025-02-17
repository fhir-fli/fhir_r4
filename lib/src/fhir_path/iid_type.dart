import 'package:fhir_r4/fhir_r4.dart';

/// #%L
/// HAPI FHIR - Core Library
/// %%
/// Copyright (C) 2014 - 2023 Smile CDR, Inc.
/// %%
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     http://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
/// #L%
///
/// Base interface for ID datatype.
///
/// <p>
/// <b>Concrete Implementations:</b> This interface is often returned and/or
/// accepted by methods in HAPI's API where either
/// {link ca.uhn.fhir.model.primitive.IdDt} (the HAPI structure ID type) or
/// <code>org.hl7.fhir.instance.model.IdType</code> (the RI structure ID type)
/// will be used, depending on
/// which version of the strctures your application is using.
/// </p>
///
abstract class IIdType extends PrimitiveType<String> {
  /// Constructor
  IIdType(super.value);

  /// Constructor
  void applyTo(Resource theResource);

  ///
  /// Returns the server base URL if this ID contains one. For example, the
  /// base URL is the 'http://example.com/fhir' in the following ID:
  /// <code>http://example.com/fhir/Patient/123/_history/55</code>
  ///
  String getBaseUrl();

  ///
  /// Returns only the logical ID part of this ID. For example, given the ID
  /// "http://example,.com/fhir/Patient/123/_history/456", this method would
  /// return "123".
  ///
  String getIdPart();

  ///
  /// Returns the ID part of this ID (e.g. in the ID
  /// http://example.com/Patient/123/_history/456 this would be the
  /// part "123") parsed as a {@link Long}.
  ///
  /// @throws NumberFormatException If the value can't be parsed as a long
  ///
  BigInt getIdPartAsLong();

  /// Returns the resource type part of this ID. For example, the resource type
  /// is the 'Patient' in the following ID:
  /// <code>http://example.com/fhir/Patient/123/_history/55</code>
  String getResourceType();

  ///
  /// Returns the value of this ID. Note that this value may be a fully
  /// qualified URL, a relative/partial URL, or a simple ID. Use
  /// {link #getIdPart()} to get just the ID portion.
  ///
  /// @see #getIdPart()
  ///
  String getValue();

  /// Returns the version ID part of this ID. For example, the version ID is
  /// the '55' in the following ID:
  String getVersionIdPart();

  ///
  /// Returns the version ID part of this ID (e.g. in the ID
  /// http://example.com/Patient/123/_history/456 this would be the
  /// part "456") parsed as a {@link Long}.
  ///
  /// @throws NumberFormatException If the value can't be parsed as a long
  ///
  BigInt getVersionIdPartAsLong();

  /// Returns <code>true</code> if this ID contains a base URL
  bool hasBaseUrl();

  ///
  /// Returns <code>true</code> if this ID contains an actual ID part. For
  /// example, the ID part is the '123' in the following ID:
  /// <code>http://example.com/fhir/Patient/123/_history/55</code>
  ///
  bool hasIdPart();

  /// Returns <code>true</code> if this ID contains a resource type
  bool hasResourceType();

  /// Returns <code>true</code> if this ID contains a version ID part
  bool hasVersionIdPart();

  ///
  /// Returns <code>true</code> if this ID contains an absolute URL (in other
  /// words, a URL starting with "http://" or "https://"
  ///
  bool isAbsolute();

  /// Returns <code>true</code> if this ID is empty
  @override
  bool isEmpty();

  ///
  /// Returns <code>true</code> if the {@link #getIdPart() ID part of this
  /// object} is valid according to the FHIR rules for valid IDs.
  /// <p>
  /// The FHIR specification states:
  /// <code>Any combination of upper or lower case ASCII letters ('A'..'Z', and
  /// 'a'..'z', numerals ('0'..'9'), '-' and '.', with a length limit of 64
  /// characters. (This might be an integer, an un-prefixed OID, UUID or any
  /// other identifier pattern that meets these constraints.)
  /// regex: [A-Za-z0-9\-\.]{1,64}</code>
  /// </p>
  ///
  bool isIdPartValid();

  ///
  /// Returns <code>true</code> if the {@link #getIdPart() ID part of this
  /// object} contains only numbers
  ///
  bool isIdPartValidLong();

  ///
  /// Returns <code>true</code> if the ID is a local reference (in other words,
  /// it begins with the '#' character)
  ///
  bool isLocal();

  ///
  /// Returns <code>true</code> if the {@link #getVersionIdPart() version ID
  /// part of this object} contains
  /// only numbers
  ///
  bool isVersionIdPartValidLong();

  /// Sets the value of this ID
  IIdType setValue(String theString);

  /// Returns a new instance of this ID with the given value
  IIdType toUnqualified();

  /// Returns a new instance of this ID with the given value
  IIdType toUnqualifiedVersionless();

  /// Returns a new instance of this ID with the given value
  IIdType toVersionless();

  ///
  /// Returns a copy of this object, but with a different
  /// {link #getResourceType() resource type} (or if this object does not have
  /// a resource type currently, returns a copy of this object with
  /// the given resource type).
  /// <p>
  /// Note that if this object represents a local reference
  /// (e.g. <code>#foo</code>) or a URN (e.g. <code>urn:oid:1.2.3.4</code>)
  /// this method will simply return a copy of this object with no
  /// modifications.
  /// </p>
  ///
  IIdType withResourceType(String theResName);

  ///
  /// Returns a copy of this object, but with a different
  /// {link #getResourceType() resource type}
  /// and {@link #getBaseUrl() base URL} (or if this object does not have a
  /// resource type currently, returns a copy of this object with
  /// the given server base and resource type).
  /// <p>
  /// Note that if this object represents a local reference
  /// (e.g. <code>#foo</code>) or
  /// a URN (e.g. <code>urn:oid:1.2.3.4</code>) this method will simply return
  /// a copy of this object with no modifications.
  /// </p>
  ///
  IIdType withServerBase(String theServerBase, String theResourceName);

  ///
  /// Returns a copy of this object, but with a different
  /// {link #getVersionIdPart() version ID}
  /// (or if this object does not have a resource type currently, returns a copy
  /// of this object with the given version).
  /// <p>
  /// Note that if this object represents a local reference
  /// (e.g. <code>#foo</code>) or a URN (e.g. <code>urn:oid:1.2.3.4</code>)
  /// this method will simply return a copy of this object with no
  /// modifications.
  /// </p>
  ///
  IIdType withVersion(String theVersion);

  ///
  /// Sets the value of this ID by combining all of the individual parts.
  /// <p>
  /// <b>Required parameters:</b> The following rules apply to the parameters of
  /// this method (in this case, populated means a non-empty string and not
  /// populated means <code>null</code> or an empty string)
  /// </p>
  /// <ul>
  /// <li>All values may be not populated</li>
  /// <li>If <b>theVersionIdPart</b> is populated, <b>theResourceType</b> and
  /// <b>theIdPart</b> must be populated</li>
  /// <li>If <b>theBaseUrl</b> is populated and <b>theIdPart</b> is populated,
  /// <b>theResourceType</b> must be populated</li>
  /// </ul>
  ///
  ///@return Returns a reference to <code>this</code> for easy method chaining
  ///
  IIdType setParts(
    String theBaseUrl,
    String theResourceType,
    String theIdPart,
    String theVersionIdPart,
  );
}

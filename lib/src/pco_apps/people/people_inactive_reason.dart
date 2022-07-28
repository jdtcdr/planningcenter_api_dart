/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.718075
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People InactiveReason Object
///
/// - Application:        people
/// - Id:                 inactive_reason
/// - Type:               InactiveReason
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/inactive_reasons
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/inactive_reasons
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleInactiveReason()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleInactiveReason.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleInactiveReason.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///
/// ## Description
/// An inactive reason is a small bit of text indicating why a member is no longer active.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `inactivereason-organization-inactive_reasons`: https://api.planningcenteronline.com/people/v2/inactive_reasons
/// - `inactivereason-person-inactive_reason`: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "InactiveReason",
///   "id": "1",
///   "attributes": {
///     "value": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleInactiveReason extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'InactiveReason';
  static const String kTypeId = 'inactive_reason';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/inactive_reasons';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/inactive_reasons';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['value'];

  /// possible orderings with parameter ?order=
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['value'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kValue = 'value';

  // getters and setters
  @override
  List<String> get createAllowed => ['value'];

  @override
  List<String> get updateAllowed => ['value'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => _attributes[kValue] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  // Class Constructors
  PcoPeopleInactiveReason.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleInactiveReason.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleInactiveReason] object using this endpoint: `https://api.planningcenteronline.com/people/v2/inactive_reasons`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `value`
  /// - FIELDS USED WHEN UPDATING: `value`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleInactiveReason(
      {String? id,
      String? value,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleInactiveReason.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/inactive_reasons';
    if (value != null) obj._attributes['value'] = value;
    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }
    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `/people/v2/inactive_reasons`
  static Future<PcoCollection<PcoPeopleInactiveReason>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/inactive_reasons';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/inactive_reason`
  static Future<PcoCollection<PcoPeopleInactiveReason>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/people/$personId/inactive_reason';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}

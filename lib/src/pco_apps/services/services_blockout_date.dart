/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:54.997515
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services BlockoutDate Object
///
/// - Application:        services
/// - Id:                 blockout_date
/// - Type:               BlockoutDate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/blockout_dates
/// - Create Endpoint:    NONE
///
/// ## Description
/// The actual dates generated by the blockout or its recurrence pattern. Generated up to a year in advance
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `groupIdentifier` (ro) -> PCO: `group_identifier`
/// - `reason` (ro) -> PCO: `reason`
/// - `timeZone` (ro) -> PCO: `time_zone`
/// - `isShare` (ro) -> PCO: `share`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// - `endsAt` (ro) -> PCO: `ends_at`
/// - `endsAtUtc` (ro) -> PCO: `ends_at_utc`
/// - `startsAtUtc` (ro) -> PCO: `starts_at_utc`
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
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `blockoutdate-blockout-blockout_dates`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "BlockoutDate",
///   "id": "1",
///   "attributes": {
///     "group_identifier": "string",
///     "reason": "string",
///     "time_zone": "string",
///     "share": true,
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "ends_at_utc": "2000-01-01T12:00:00Z",
///     "starts_at_utc": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "blockout": {
///       "data": {
///         "type": "Blockout",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesBlockoutDate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'BlockoutDate';
  static const String kTypeId = 'blockout_date';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/blockout_dates';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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
  static const kGroupIdentifier = 'group_identifier';
  static const kReason = 'reason';
  static const kTimeZone = 'time_zone';
  static const kShare = 'share';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kEndsAtUtc = 'ends_at_utc';
  static const kStartsAtUtc = 'starts_at_utc';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get groupIdentifier => attributes[kGroupIdentifier] ?? '';
  String get reason => attributes[kReason] ?? '';
  String get timeZone => attributes[kTimeZone] ?? '';
  bool get isShare => attributes[kShare] == true;
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  DateTime get endsAtUtc => DateTime.parse(attributes[kEndsAtUtc] ?? '');
  DateTime get startsAtUtc => DateTime.parse(attributes[kStartsAtUtc] ?? '');

  // Class Constructors
  PcoServicesBlockoutDate.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesBlockoutDate.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesBlockoutDate] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_dates`
  static Future<PcoCollection<PcoServicesBlockoutDate>>
      getFromPeopleAndBlockout(String peopleId, String blockoutId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesBlockoutDate.canInclude;
    var url =
        '/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_dates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesBlockoutDate>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}

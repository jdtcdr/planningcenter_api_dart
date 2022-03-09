/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.890809
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
/// 
/// Description:
/// The actual dates generated by the blockout or its recurrence pattern. Generated up to a year in advance
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `blockoutdate-blockout-blockout_dates`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates
/// 
/// All Actions:
/// NONE
///
class PcoServicesBlockoutDate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'BlockoutDate';
  static const String kTypeId = 'blockout_date';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockout_dates';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockout_dates';

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
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesBlockoutDate._() : super(kPcoApplication, kTypeString);
  PcoServicesBlockoutDate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesBlockoutDate] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_dates`
  static Future<PcoCollection<PcoServicesBlockoutDate>> getFromPeopleAndBlockout(String peopleId,String blockoutId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesBlockoutDate.canInclude;
    var url = '/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_dates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesBlockoutDate>(url, query: query, apiVersion:kApiVersion);
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

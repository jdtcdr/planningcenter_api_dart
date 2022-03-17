/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:22.094031
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People ServiceTime Object
/// 
/// - Application:        people
/// - Id:                 service_time
/// - Type:               ServiceTime
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
/// Description:
/// A ServiceTime Resource
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `startTime` (rw) -> PCO: `start_time`
/// - `day` (rw) -> PCO: `day`
/// - `description` (rw) -> PCO: `description`
/// 
/// Example:
/// ```json
/// {
///   "type": "ServiceTime",
///   "id": "1",
///   "attributes": {
///     "start_time": 1,
///     "day": "value",
///     "description": "string"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
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
/// - `time`: (URLParameter), prefix with a hyphen (-time) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `servicetime-campus-service_times`: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
/// All Actions:
/// NONE
///
class PcoPeopleServiceTime extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ServiceTime';
  static const String kTypeId = 'service_time';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'servicetime-campus-service_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `time`: (URLParameter), prefix with a hyphen (-time) to reverse the order
  static List<String> get canOrderBy => ['time'];

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
  static const kStartTime = 'start_time';
  static const kDay = 'day';
  static const kDescription = 'description';


  // getters and setters
  @override
  List<String> get createAllowed => ['start_time','day','description'];

  @override
  List<String> get updateAllowed => ['start_time','day','description'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  int get startTime => attributes[kStartTime] ?? 0;
  String get day => attributes[kDay] ?? '';
  String get description => attributes[kDescription] ?? '';
  

  // setters for object attributes

  set startTime(int n) => attributes[kStartTime] = n;
  
  /// Possible values: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, or `saturday`
  set day(String s) => attributes[kDay] = s;
  set description(String s) => attributes[kDescription] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleServiceTime._() : super(kPcoApplication, kTypeString);
  PcoPeopleServiceTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleServiceTime] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/campuses/$campusId/service_times`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleServiceTime(String campusId) {
    return PcoPeopleServiceTime._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/campuses/$campusId/service_times';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleServiceTime] objects (expecting many)
  /// using a path like this: `/people/v2/campuses/$campusId/service_times`
  static Future<PcoCollection<PcoPeopleServiceTime>> getFromCampus(String campusId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleServiceTime.canInclude;
    var url = '/people/v2/campuses/$campusId/service_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleServiceTime>(url, query: query, apiVersion:kApiVersion);
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

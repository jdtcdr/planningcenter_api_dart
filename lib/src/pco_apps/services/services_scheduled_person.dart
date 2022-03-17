/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.558463
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services ScheduledPerson Object
/// 
/// - Application:        services
/// - Id:                 scheduled_person
/// - Type:               ScheduledPerson
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// 
/// ## Description
/// A person already scheduled to a SignupSheet
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `fullName` (ro) -> PCO: `full_name`
/// - `status` (ro) -> PCO: `status`
/// - `thumbnail` (ro) -> PCO: `thumbnail`
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
/// - `scheduledperson-signupsheet-scheduled_people`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ScheduledPerson",
///   "id": "1",
///   "attributes": {
///     "full_name": "string",
///     "status": "string",
///     "thumbnail": "string"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "signup_sheet": {
///       "data": {
///         "type": "SignupSheet",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesScheduledPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ScheduledPerson';
  static const String kTypeId = 'scheduled_person';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'scheduledperson-signupsheet-scheduled_people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people';

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
  static const kFullName = 'full_name';
  static const kStatus = 'status';
  static const kThumbnail = 'thumbnail';


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

  String get fullName => attributes[kFullName] ?? '';
  String get status => attributes[kStatus] ?? '';
  String get thumbnail => attributes[kThumbnail] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesScheduledPerson._() : super(kPcoApplication, kTypeString);
  PcoServicesScheduledPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesScheduledPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people`
  static Future<PcoCollection<PcoServicesScheduledPerson>> getScheduledPeopleFromPeopleAndAvailableSignupAndSignupSheet(String peopleId,String availableSignupId,String signupSheetId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesScheduledPerson.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people';
    
    return PcoCollection.fromApiCall<PcoServicesScheduledPerson>(url, query: query, apiVersion:kApiVersion);
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

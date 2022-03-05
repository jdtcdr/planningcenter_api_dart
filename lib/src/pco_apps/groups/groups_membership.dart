/// This file was generated on 2022-03-04T20:00:54.055543


import '../../pco.dart';

/// This class represents a PCO Groups Membership Object
/// 
/// - Application:        groups
/// - Id:                 membership
/// - Type:               Membership
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Membership",
///   "id": "1",
///   "attributes": {
///     "account_center_identifier": "string",
///     "avatar_url": "string",
///     "color_identifier": "string",
///     "email_address": "string",
///     "first_name": "string",
///     "joined_at": "2000-01-01T12:00:00Z",
///     "last_name": "string",
///     "phone_number": "string",
///     "role": "string"
///   },
///   "relationships": {
///     "group": {
///       "data": {
///         "type": "Group",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
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
/// - `role`: (URLParameter), query on a specific role, example: ?where[role]=string
/// 
/// Possible orderings with parameter ?order=
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `joined_at`: (URLParameter), prefix with a hyphen (-joined_at) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
///
/// All Outbound Edges:
/// - `group-membership-group`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
/// 
/// All Inbound Edges:
/// - `membership-group-memberships`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// - `membership-person-memberships`: https://api.planningcenteronline.com/groups/v2/people/1/memberships
/// 
/// All Actions:
/// NONE
///
class PcoGroupsMembership extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Membership';
  static const String kTypeId = 'membership';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'membership-person-memberships';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/people/1/memberships';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/memberships';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `role`: (URLParameter), query on a specific role, example: ?where[role]=string
  static List<String> get canQuery => ['role'];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `joined_at`: (URLParameter), prefix with a hyphen (-joined_at) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
  static List<String> get canOrderBy => ['first_name','joined_at','last_name','role'];

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
  static const kAccountCenterIdentifier = 'account_center_identifier';
  static const kAvatarUrl = 'avatar_url';
  static const kColorIdentifier = 'color_identifier';
  static const kEmailAddress = 'email_address';
  static const kFirstName = 'first_name';
  static const kJoinedAt = 'joined_at';
  static const kLastName = 'last_name';
  static const kPhoneNumber = 'phone_number';
  static const kRole = 'role';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['person_id','role','joined_at'];

  @override
  List<String> get updateAllowed => ['role','joined_at'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get accountCenterIdentifier => attributes[kAccountCenterIdentifier] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';
  String get colorIdentifier => attributes[kColorIdentifier] ?? '';
  String get emailAddress => attributes[kEmailAddress] ?? '';
  String get firstName => attributes[kFirstName] ?? '';
  DateTime get joinedAt => DateTime.parse(attributes[kJoinedAt] ?? '');
  String get lastName => attributes[kLastName] ?? '';
  String get phoneNumber => attributes[kPhoneNumber] ?? '';
  String get role => attributes[kRole] ?? '';
  

  // setters for object attributes

  set joinedAt(DateTime d) => attributes[kJoinedAt] = d.toIso8601String();
  
  /// Can be either `leader` or `member`
  set role(String s) => attributes[kRole] = s;
  

  // additional setters and getters for assignable values

  String get personId => attributes[kPersonId] ?? '';
  set personId(String s) => attributes[kPersonId] = s;
  



  // Class Constructors
  PcoGroupsMembership() : super(kPcoApplication, kTypeString);
  PcoGroupsMembership.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoGroupsMembership] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/groups/v2/groups/$groupId/memberships`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGroupsMembership.create(String groupId) {
    return PcoGroupsMembership()
      .._apiPathOverride = 'https://api.planningcenteronline.com/groups/v2/groups/$groupId/memberships';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/memberships`
  static Future<PcoCollection<PcoGroupsMembership>> getFromGroup(String groupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '/groups/v2/groups/$groupId/memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$peopleId/memberships`
  static Future<PcoCollection<PcoGroupsMembership>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '/groups/v2/people/$peopleId/memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group`
  Future<PcoCollection<PcoGroupsGroup>> getGroup({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '$apiEndpoint/group';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}

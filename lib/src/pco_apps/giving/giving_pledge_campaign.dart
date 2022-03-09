/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.498513
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Giving PledgeCampaign Object
/// 
/// - Application:        giving
/// - Id:                 pledge_campaign
/// - Type:               PledgeCampaign
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/pledge_campaigns
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "PledgeCampaign",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "description": "string",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "goal_cents": 1,
///     "goal_currency": "USD",
///     "show_goal_in_church_center": true,
///     "received_total_from_pledges_cents": 1,
///     "received_total_outside_of_pledges_cents": 1
///   },
///   "relationships": {
///     "fund": {
///       "data": {
///         "type": "Fund",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - fund: include associated fund 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `fund-pledgecampaign-fund`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund
/// - `pledge-pledgecampaign-pledges`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
/// 
/// All Inbound Edges:
/// - `pledgecampaign-pledge-pledge_campaign`: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
/// 
/// All Actions:
/// NONE
///
class PcoGivingPledgeCampaign extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'PledgeCampaign';
  static const String kTypeId = 'pledge_campaign';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledge_campaigns';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledge_campaigns';

  /// possible includes with parameter ?include=a,b
  /// - `fund`: include associated fund 
  static List<String> get canInclude => ['fund'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['ends_at','starts_at'];

  /// possible orderings with parameter ?order=
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['ends_at','starts_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kName = 'name';
  static const kDescription = 'description';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kGoalCents = 'goal_cents';
  static const kGoalCurrency = 'goal_currency';
  static const kShowGoalInChurchCenter = 'show_goal_in_church_center';
  static const kReceivedTotalFromPledgesCents = 'received_total_from_pledges_cents';
  static const kReceivedTotalOutsideOfPledgesCents = 'received_total_outside_of_pledges_cents';
  static const kFundId = 'fund_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','description','starts_at','ends_at','goal_cents','show_goal_in_church_center','fund_id'];

  @override
  List<String> get updateAllowed => ['name','description','starts_at','ends_at','goal_cents','show_goal_in_church_center','fund_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  String get description => attributes[kDescription] ?? '';
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  int get goalCents => attributes[kGoalCents] ?? 0;
  String get goalCurrency => attributes[kGoalCurrency] ?? '';
  bool get isShowGoalInChurchCenter => attributes[kShowGoalInChurchCenter] == true;
  int get receivedTotalFromPledgesCents => attributes[kReceivedTotalFromPledgesCents] ?? 0;
  int get receivedTotalOutsideOfPledgesCents => attributes[kReceivedTotalOutsideOfPledgesCents] ?? 0;
  

  // setters for object attributes

  set name(String s) => attributes[kName] = s;
  set description(String s) => attributes[kDescription] = s;
  set startsAt(DateTime d) => attributes[kStartsAt] = d.toIso8601String();
  set endsAt(DateTime d) => attributes[kEndsAt] = d.toIso8601String();
  
  /// Optional. During the donation period of this campaign, the running total of donations will be tracked against this number
  set goalCents(int n) => attributes[kGoalCents] = n;
  
  /// In addition to seeing their personal pledge progress within their donor profile, this option allows donors to see the the collective progress towards the campaign’s overall goal (if set).
  set isShowGoalInChurchCenter(bool b) => attributes[kShowGoalInChurchCenter] = b;
  

  // additional setters and getters for assignable values

  String get fundId => attributes[kFundId] ?? '';
  set fundId(String s) => attributes[kFundId] = s;
  



  // Class Constructors
  PcoGivingPledgeCampaign._() : super(kPcoApplication, kTypeString);
  PcoGivingPledgeCampaign.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoGivingPledgeCampaign] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/pledge_campaigns`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGivingPledgeCampaign() {
    return PcoGivingPledgeCampaign._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/giving/v2/pledge_campaigns';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingPledgeCampaign] objects (expecting one)
  /// using a path like this: `/giving/v2/pledges/$pledgeId/pledge_campaign`
  static Future<PcoCollection<PcoGivingPledgeCampaign>> getFromPledge(String pledgeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledgeCampaign.canInclude;
    var url = '/giving/v2/pledges/$pledgeId/pledge_campaign';
    
    return PcoCollection.fromApiCall<PcoGivingPledgeCampaign>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingFund] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund`
  Future<PcoCollection<PcoGivingFund>> getFund({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '$apiEndpoint/fund';
    return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges`
  Future<PcoCollection<PcoGivingPledge>> getPledges({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '$apiEndpoint/pledges';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}

/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:22.260485
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Giving Designation Object
/// 
/// - Application:        giving
/// - Id:                 designation
/// - Type:               Designation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/designations
/// 
/// Description:
/// 
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `amountCents` (ro) -> PCO: `amount_cents`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
/// 
/// Example:
/// ```json
/// {
///   "type": "Designation",
///   "id": "1",
///   "attributes": {
///     "amount_cents": 1,
///     "amount_currency": "string"
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
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `fund-designation-fund`: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund
/// 
/// All Inbound Edges:
/// - `designation-designationrefund-designation`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation
/// - `designation-donation-designations`: https://api.planningcenteronline.com/giving/v2/donations/1/designations
/// 
/// All Actions:
/// NONE
///
class PcoGivingDesignation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Designation';
  static const String kTypeId = 'designation';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'designation-donation-designations';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/designations';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/designations';

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
  static const kAmountCents = 'amount_cents';
  static const kAmountCurrency = 'amount_currency';


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

  int get amountCents => attributes[kAmountCents] ?? 0;
  String get amountCurrency => attributes[kAmountCurrency] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGivingDesignation._() : super(kPcoApplication, kTypeString);
  PcoGivingDesignation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingDesignation] objects (expecting one)
  /// using a path like this: `/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation`
  static Future<PcoCollection<PcoGivingDesignation>> getFromDonationAndRefundAndDesignationRefund(String donationId,String designationRefundId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation';
    
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingDesignation] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/designations`
  static Future<PcoCollection<PcoGivingDesignation>> getFromDonation(String donationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '/giving/v2/donations/$donationId/designations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingFund] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund`
  Future<PcoCollection<PcoGivingFund>> getFund({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '$apiEndpoint/fund';
    return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}

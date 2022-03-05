/// This file was generated on 2022-03-04T20:00:53.914177


import '../../pco.dart';

/// This class represents a PCO Giving DesignationRefund Object
/// 
/// - Application:        giving
/// - Id:                 designation_refund
/// - Type:               DesignationRefund
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "DesignationRefund",
///   "id": "1",
///   "attributes": {
///     "amount_cents": 1,
///     "amount_currency": "string"
///   },
///   "relationships": {
///     "designation": {
///       "data": {
///         "type": "Designation",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - designation: include associated designation 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `designation-designationrefund-designation`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation
/// 
/// All Inbound Edges:
/// - `designationrefund-refund-designation_refunds`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds
/// 
/// All Actions:
/// NONE
///
class PcoGivingDesignationRefund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'DesignationRefund';
  static const String kTypeId = 'designation_refund';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds';

  /// possible includes with parameter ?include=a,b
  /// - `designation`: include associated designation 
  static List<String> get canInclude => ['designation'];

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
  PcoGivingDesignationRefund() : super(kPcoApplication, kTypeString);
  PcoGivingDesignationRefund.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingDesignationRefund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/refund/$refundId/designation_refunds`
  static Future<PcoCollection<PcoGivingDesignationRefund>> getFromDonationAndRefund(String donationId,String refundId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignationRefund.canInclude;
    var url = '/giving/v2/donations/$donationId/refund/$refundId/designation_refunds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDesignationRefund>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingDesignation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation`
  Future<PcoCollection<PcoGivingDesignation>> getDesignation({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '$apiEndpoint/designation';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}

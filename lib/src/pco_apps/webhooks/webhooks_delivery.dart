/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.600588
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Webhooks Delivery Object
///
/// - Application:        webhooks
/// - Id:                 delivery
/// - Type:               Delivery
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `status` (ro) -> PCO: `status`
/// - `requestHeaders` (ro) -> PCO: `request_headers`
/// - `requestBody` (ro) -> PCO: `request_body`
/// - `responseHeaders` (ro) -> PCO: `response_headers`
/// - `responseBody` (ro) -> PCO: `response_body`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `timing` (ro) -> PCO: `timing`
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `delivery-event-deliveries`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Delivery",
///   "id": "1",
///   "attributes": {
///     "status": 1,
///     "request_headers": "string",
///     "request_body": "string",
///     "response_headers": "string",
///     "response_body": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "timing": 1.42
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoWebhooksDelivery extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Delivery';
  static const String kTypeId = 'delivery';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kStatus = 'status';
  static const kRequestHeaders = 'request_headers';
  static const kRequestBody = 'request_body';
  static const kResponseHeaders = 'response_headers';
  static const kResponseBody = 'response_body';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kTiming = 'timing';

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
  int get status => attributes[kStatus] ?? 0;
  String get requestHeaders => attributes[kRequestHeaders] ?? '';
  String get requestBody => attributes[kRequestBody] ?? '';
  String get responseHeaders => attributes[kResponseHeaders] ?? '';
  String get responseBody => attributes[kResponseBody] ?? '';
  double get timing => attributes[kTiming] ?? 0;

  // Class Constructors
  PcoWebhooksDelivery.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoWebhooksDelivery.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoWebhooksDelivery] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries`
  static Future<PcoCollection<PcoWebhooksDelivery>> getFromSubscriptionAndEvent(
      String subscriptionId, String eventId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksDelivery.canInclude;
    var url =
        '/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksDelivery>(url,
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

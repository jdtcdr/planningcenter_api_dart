/// This file was generated on 2022-03-04T20:00:53.776624


import '../../pco.dart';

/// This class represents a PCO People WorkflowStepAssigneeSummary Object
/// 
/// - Application:        people
/// - Id:                 workflow_step_assignee_summary
/// - Type:               WorkflowStepAssigneeSummary
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// 
/// Description:
/// The ready and snoozed count for an assignee & step
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowStepAssigneeSummary",
///   "id": "1",
///   "attributes": {
///     "ready_count": 1,
///     "snoozed_count": 1
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "step": {
///       "data": {
///         "type": "Step",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `person-workflowstepassigneesummary-person`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person
/// 
/// All Inbound Edges:
/// - `workflowstepassigneesummary-workflowstep-assignee_summaries`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// 
/// All Actions:
/// NONE
///
class PcoPeopleWorkflowStepAssigneeSummary extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStepAssigneeSummary';
  static const String kTypeId = 'workflow_step_assignee_summary';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowstepassigneesummary-workflowstep-assignee_summaries';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static List<String> get canInclude => ['person'];

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
  static const kReadyCount = 'ready_count';
  static const kSnoozedCount = 'snoozed_count';


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

  int get readyCount => attributes[kReadyCount] ?? 0;
  int get snoozedCount => attributes[kSnoozedCount] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleWorkflowStepAssigneeSummary() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowStepAssigneeSummary.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleWorkflowStepAssigneeSummary] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries`
  static Future<PcoCollection<PcoPeopleWorkflowStepAssigneeSummary>> getAssigneeSummariesFromWorkflowAndStep(String workflowId,String stepId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStepAssigneeSummary.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries';
    
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStepAssigneeSummary>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}

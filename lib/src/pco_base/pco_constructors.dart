/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.650385
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import 'pco_resource_base.dart';
import "../pco_apps/apps.dart";

Map<String, PcoResource Function(Map<String, dynamic>)> _constructors = {
  'services-Arrangement': (Map<String, dynamic> data) =>
      PcoServicesArrangement.fromJson(data),
  'services-ArrangementSections': (Map<String, dynamic> data) =>
      PcoServicesArrangementSection.fromJson(data),
  'services-Attachment': (Map<String, dynamic> data) =>
      PcoServicesAttachment.fromJson(data),
  'services-AttachmentActivity': (Map<String, dynamic> data) =>
      PcoServicesAttachmentActivity.fromJson(data),
  'services-AttachmentType': (Map<String, dynamic> data) =>
      PcoServicesAttachmentType.fromJson(data),
  'services-AvailableSignup': (Map<String, dynamic> data) =>
      PcoServicesAvailableSignup.fromJson(data),
  'services-Blockout': (Map<String, dynamic> data) =>
      PcoServicesBlockout.fromJson(data),
  'services-BlockoutDate': (Map<String, dynamic> data) =>
      PcoServicesBlockoutDate.fromJson(data),
  'services-BlockoutException': (Map<String, dynamic> data) =>
      PcoServicesBlockoutException.fromJson(data),
  'services-BlockoutScheduleConflict': (Map<String, dynamic> data) =>
      PcoServicesBlockoutScheduleConflict.fromJson(data),
  'services-CcliReporting': (Map<String, dynamic> data) =>
      PcoServicesCcliReporting.fromJson(data),
  'services-Contributor': (Map<String, dynamic> data) =>
      PcoServicesContributor.fromJson(data),
  'services-CustomSlide': (Map<String, dynamic> data) =>
      PcoServicesCustomSlide.fromJson(data),
  'services-EmailTemplate': (Map<String, dynamic> data) =>
      PcoServicesEmailTemplate.fromJson(data),
  'services-EmailTemplateRenderedResponse': (Map<String, dynamic> data) =>
      PcoServicesEmailTemplateRenderedResponse.fromJson(data),
  'services-Folder': (Map<String, dynamic> data) =>
      PcoServicesFolder.fromJson(data),
  'services-FolderPath': (Map<String, dynamic> data) =>
      PcoServicesFolderPath.fromJson(data),
  'services-Item': (Map<String, dynamic> data) =>
      PcoServicesItem.fromJson(data),
  'services-ItemNote': (Map<String, dynamic> data) =>
      PcoServicesItemNote.fromJson(data),
  'services-ItemNoteCategory': (Map<String, dynamic> data) =>
      PcoServicesItemNoteCategory.fromJson(data),
  'services-ItemTime': (Map<String, dynamic> data) =>
      PcoServicesItemTime.fromJson(data),
  'services-Key': (Map<String, dynamic> data) => PcoServicesKey.fromJson(data),
  'services-Layout': (Map<String, dynamic> data) =>
      PcoServicesLayout.fromJson(data),
  'services-Live': (Map<String, dynamic> data) =>
      PcoServicesLive.fromJson(data),
  'services-LiveController': (Map<String, dynamic> data) =>
      PcoServicesLiveController.fromJson(data),
  'services-Media': (Map<String, dynamic> data) =>
      PcoServicesMedia.fromJson(data),
  'services-MediaSchedule': (Map<String, dynamic> data) =>
      PcoServicesMediaSchedule.fromJson(data),
  'services-NeededPosition': (Map<String, dynamic> data) =>
      PcoServicesNeededPosition.fromJson(data),
  'services-Organization': (Map<String, dynamic> data) =>
      PcoServicesOrganization.fromJson(data),
  'services-Person': (Map<String, dynamic> data) =>
      PcoServicesPerson.fromJson(data),
  'services-PersonTeamPositionAssignment': (Map<String, dynamic> data) =>
      PcoServicesPersonTeamPositionAssignment.fromJson(data),
  'services-Plan': (Map<String, dynamic> data) =>
      PcoServicesPlan.fromJson(data),
  'services-PlanNote': (Map<String, dynamic> data) =>
      PcoServicesPlanNote.fromJson(data),
  'services-PlanNoteCategory': (Map<String, dynamic> data) =>
      PcoServicesPlanNoteCategory.fromJson(data),
  'services-PlanPerson': (Map<String, dynamic> data) =>
      PcoServicesPlanPerson.fromJson(data),
  'services-PlanPersonTime': (Map<String, dynamic> data) =>
      PcoServicesPlanPersonTime.fromJson(data),
  'services-PlanTemplate': (Map<String, dynamic> data) =>
      PcoServicesPlanTemplate.fromJson(data),
  'services-PlanTime': (Map<String, dynamic> data) =>
      PcoServicesPlanTime.fromJson(data),
  'services-PublicView': (Map<String, dynamic> data) =>
      PcoServicesPublicView.fromJson(data),
  'services-ReportTemplate': (Map<String, dynamic> data) =>
      PcoServicesReportTemplate.fromJson(data),
  'services-Schedule': (Map<String, dynamic> data) =>
      PcoServicesSchedule.fromJson(data),
  'services-ScheduledPerson': (Map<String, dynamic> data) =>
      PcoServicesScheduledPerson.fromJson(data),
  'services-Series': (Map<String, dynamic> data) =>
      PcoServicesSeries.fromJson(data),
  'services-ServiceType': (Map<String, dynamic> data) =>
      PcoServicesServiceType.fromJson(data),
  'services-ServiceTypePath': (Map<String, dynamic> data) =>
      PcoServicesServiceTypePath.fromJson(data),
  'services-SignupSheet': (Map<String, dynamic> data) =>
      PcoServicesSignupSheet.fromJson(data),
  'services-SignupSheetMetadata': (Map<String, dynamic> data) =>
      PcoServicesSignupSheetMetadata.fromJson(data),
  'services-SkippedAttachment': (Map<String, dynamic> data) =>
      PcoServicesSkippedAttachment.fromJson(data),
  'services-Song': (Map<String, dynamic> data) =>
      PcoServicesSong.fromJson(data),
  'services-SongSchedule': (Map<String, dynamic> data) =>
      PcoServicesSongSchedule.fromJson(data),
  'services-SongbookStatus': (Map<String, dynamic> data) =>
      PcoServicesSongbookStatu.fromJson(data),
  'services-SplitTeamRehearsalAssignment': (Map<String, dynamic> data) =>
      PcoServicesSplitTeamRehearsalAssignment.fromJson(data),
  'services-Tag': (Map<String, dynamic> data) => PcoServicesTag.fromJson(data),
  'services-TagGroup': (Map<String, dynamic> data) =>
      PcoServicesTagGroup.fromJson(data),
  'services-Team': (Map<String, dynamic> data) =>
      PcoServicesTeam.fromJson(data),
  'services-TeamLeader': (Map<String, dynamic> data) =>
      PcoServicesTeamLeader.fromJson(data),
  'services-TeamPosition': (Map<String, dynamic> data) =>
      PcoServicesTeamPosition.fromJson(data),
  'services-TextSetting': (Map<String, dynamic> data) =>
      PcoServicesTextSetting.fromJson(data),
  'services-TimePreferenceOption': (Map<String, dynamic> data) =>
      PcoServicesTimePreferenceOption.fromJson(data),
  'services-Zoom': (Map<String, dynamic> data) =>
      PcoServicesZoom.fromJson(data),
  'check-ins-AttendanceType': (Map<String, dynamic> data) =>
      PcoCheckInsAttendanceType.fromJson(data),
  'check-ins-CheckIn': (Map<String, dynamic> data) =>
      PcoCheckInsCheckIn.fromJson(data),
  'check-ins-CheckInGroup': (Map<String, dynamic> data) =>
      PcoCheckInsCheckInGroup.fromJson(data),
  'check-ins-CheckInTime': (Map<String, dynamic> data) =>
      PcoCheckInsCheckInTime.fromJson(data),
  'check-ins-Event': (Map<String, dynamic> data) =>
      PcoCheckInsEvent.fromJson(data),
  'check-ins-EventLabel': (Map<String, dynamic> data) =>
      PcoCheckInsEventLabel.fromJson(data),
  'check-ins-EventPeriod': (Map<String, dynamic> data) =>
      PcoCheckInsEventPeriod.fromJson(data),
  'check-ins-EventTime': (Map<String, dynamic> data) =>
      PcoCheckInsEventTime.fromJson(data),
  'check-ins-Headcount': (Map<String, dynamic> data) =>
      PcoCheckInsHeadcount.fromJson(data),
  'check-ins-Label': (Map<String, dynamic> data) =>
      PcoCheckInsLabel.fromJson(data),
  'check-ins-Location': (Map<String, dynamic> data) =>
      PcoCheckInsLocation.fromJson(data),
  'check-ins-LocationEventPeriod': (Map<String, dynamic> data) =>
      PcoCheckInsLocationEventPeriod.fromJson(data),
  'check-ins-LocationEventTime': (Map<String, dynamic> data) =>
      PcoCheckInsLocationEventTime.fromJson(data),
  'check-ins-LocationLabel': (Map<String, dynamic> data) =>
      PcoCheckInsLocationLabel.fromJson(data),
  'check-ins-Option': (Map<String, dynamic> data) =>
      PcoCheckInsOption.fromJson(data),
  'check-ins-Organization': (Map<String, dynamic> data) =>
      PcoCheckInsOrganization.fromJson(data),
  'check-ins-Pass': (Map<String, dynamic> data) =>
      PcoCheckInsPas.fromJson(data),
  'check-ins-Person': (Map<String, dynamic> data) =>
      PcoCheckInsPerson.fromJson(data),
  'check-ins-PersonEvent': (Map<String, dynamic> data) =>
      PcoCheckInsPersonEvent.fromJson(data),
  'check-ins-Station': (Map<String, dynamic> data) =>
      PcoCheckInsStation.fromJson(data),
  'check-ins-Theme': (Map<String, dynamic> data) =>
      PcoCheckInsTheme.fromJson(data),
  'people-Address': (Map<String, dynamic> data) =>
      PcoPeopleAddres.fromJson(data),
  'people-AnniversaryCouples': (Map<String, dynamic> data) =>
      PcoPeopleAnniversaryCouple.fromJson(data),
  'people-App': (Map<String, dynamic> data) => PcoPeopleApp.fromJson(data),
  'people-BirthdayPeople': (Map<String, dynamic> data) =>
      PcoPeopleBirthdayPeople.fromJson(data),
  'people-Campus': (Map<String, dynamic> data) =>
      PcoPeopleCampus.fromJson(data),
  'people-Carrier': (Map<String, dynamic> data) =>
      PcoPeopleCarrier.fromJson(data),
  'people-Condition': (Map<String, dynamic> data) =>
      PcoPeopleCondition.fromJson(data),
  'people-ConnectedPerson': (Map<String, dynamic> data) =>
      PcoPeopleConnectedPerson.fromJson(data),
  'people-Email': (Map<String, dynamic> data) => PcoPeopleEmail.fromJson(data),
  'people-FieldDatum': (Map<String, dynamic> data) =>
      PcoPeopleFieldDatum.fromJson(data),
  'people-FieldDefinition': (Map<String, dynamic> data) =>
      PcoPeopleFieldDefinition.fromJson(data),
  'people-FieldOption': (Map<String, dynamic> data) =>
      PcoPeopleFieldOption.fromJson(data),
  'people-Form': (Map<String, dynamic> data) => PcoPeopleForm.fromJson(data),
  'people-FormField': (Map<String, dynamic> data) =>
      PcoPeopleFormField.fromJson(data),
  'people-FormFieldOption': (Map<String, dynamic> data) =>
      PcoPeopleFormFieldOption.fromJson(data),
  'people-FormSubmission': (Map<String, dynamic> data) =>
      PcoPeopleFormSubmission.fromJson(data),
  'people-FormSubmissionValue': (Map<String, dynamic> data) =>
      PcoPeopleFormSubmissionValue.fromJson(data),
  'people-Household': (Map<String, dynamic> data) =>
      PcoPeopleHousehold.fromJson(data),
  'people-HouseholdMembership': (Map<String, dynamic> data) =>
      PcoPeopleHouseholdMembership.fromJson(data),
  'people-InactiveReason': (Map<String, dynamic> data) =>
      PcoPeopleInactiveReason.fromJson(data),
  'people-List': (Map<String, dynamic> data) => PcoPeopleList.fromJson(data),
  'people-ListCategory': (Map<String, dynamic> data) =>
      PcoPeopleListCategory.fromJson(data),
  'people-ListResult': (Map<String, dynamic> data) =>
      PcoPeopleListResult.fromJson(data),
  'people-ListShare': (Map<String, dynamic> data) =>
      PcoPeopleListShare.fromJson(data),
  'people-ListStar': (Map<String, dynamic> data) =>
      PcoPeopleListStar.fromJson(data),
  'people-MailchimpSyncStatus': (Map<String, dynamic> data) =>
      PcoPeopleMailchimpSyncStatu.fromJson(data),
  'people-MaritalStatus': (Map<String, dynamic> data) =>
      PcoPeopleMaritalStatu.fromJson(data),
  'people-Message': (Map<String, dynamic> data) =>
      PcoPeopleMessage.fromJson(data),
  'people-MessageGroup': (Map<String, dynamic> data) =>
      PcoPeopleMessageGroup.fromJson(data),
  'people-NamePrefix': (Map<String, dynamic> data) =>
      PcoPeopleNamePrefix.fromJson(data),
  'people-NameSuffix': (Map<String, dynamic> data) =>
      PcoPeopleNameSuffix.fromJson(data),
  'people-Note': (Map<String, dynamic> data) => PcoPeopleNote.fromJson(data),
  'people-NoteCategory': (Map<String, dynamic> data) =>
      PcoPeopleNoteCategory.fromJson(data),
  'people-NoteCategoryShare': (Map<String, dynamic> data) =>
      PcoPeopleNoteCategoryShare.fromJson(data),
  'people-NoteCategorySubscription': (Map<String, dynamic> data) =>
      PcoPeopleNoteCategorySubscription.fromJson(data),
  'people-Organization': (Map<String, dynamic> data) =>
      PcoPeopleOrganization.fromJson(data),
  'people-OrganizationStatistics': (Map<String, dynamic> data) =>
      PcoPeopleOrganizationStatistic.fromJson(data),
  'people-PeopleImport': (Map<String, dynamic> data) =>
      PcoPeoplePeopleImport.fromJson(data),
  'people-PeopleImportConflict': (Map<String, dynamic> data) =>
      PcoPeoplePeopleImportConflict.fromJson(data),
  'people-PeopleImportHistory': (Map<String, dynamic> data) =>
      PcoPeoplePeopleImportHistory.fromJson(data),
  'people-Person': (Map<String, dynamic> data) =>
      PcoPeoplePerson.fromJson(data),
  'people-PersonApp': (Map<String, dynamic> data) =>
      PcoPeoplePersonApp.fromJson(data),
  'people-PersonMerger': (Map<String, dynamic> data) =>
      PcoPeoplePersonMerger.fromJson(data),
  'people-PhoneNumber': (Map<String, dynamic> data) =>
      PcoPeoplePhoneNumber.fromJson(data),
  'people-PlatformNotification': (Map<String, dynamic> data) =>
      PcoPeoplePlatformNotification.fromJson(data),
  'people-Report': (Map<String, dynamic> data) =>
      PcoPeopleReport.fromJson(data),
  'people-Rule': (Map<String, dynamic> data) => PcoPeopleRule.fromJson(data),
  'people-SchoolOption': (Map<String, dynamic> data) =>
      PcoPeopleSchoolOption.fromJson(data),
  'people-ServiceTime': (Map<String, dynamic> data) =>
      PcoPeopleServiceTime.fromJson(data),
  'people-SocialProfile': (Map<String, dynamic> data) =>
      PcoPeopleSocialProfile.fromJson(data),
  'people-Tab': (Map<String, dynamic> data) => PcoPeopleTab.fromJson(data),
  'people-Workflow': (Map<String, dynamic> data) =>
      PcoPeopleWorkflow.fromJson(data),
  'people-WorkflowCard': (Map<String, dynamic> data) =>
      PcoPeopleWorkflowCard.fromJson(data),
  'people-WorkflowCardActivity': (Map<String, dynamic> data) =>
      PcoPeopleWorkflowCardActivity.fromJson(data),
  'people-WorkflowCardNote': (Map<String, dynamic> data) =>
      PcoPeopleWorkflowCardNote.fromJson(data),
  'people-WorkflowCategory': (Map<String, dynamic> data) =>
      PcoPeopleWorkflowCategory.fromJson(data),
  'people-WorkflowShare': (Map<String, dynamic> data) =>
      PcoPeopleWorkflowShare.fromJson(data),
  'people-WorkflowStep': (Map<String, dynamic> data) =>
      PcoPeopleWorkflowStep.fromJson(data),
  'people-WorkflowStepAssigneeSummary': (Map<String, dynamic> data) =>
      PcoPeopleWorkflowStepAssigneeSummary.fromJson(data),
  'calendar-Attachment': (Map<String, dynamic> data) =>
      PcoCalendarAttachment.fromJson(data),
  'calendar-Conflict': (Map<String, dynamic> data) =>
      PcoCalendarConflict.fromJson(data),
  'calendar-Event': (Map<String, dynamic> data) =>
      PcoCalendarEvent.fromJson(data),
  'calendar-EventInstance': (Map<String, dynamic> data) =>
      PcoCalendarEventInstance.fromJson(data),
  'calendar-EventResourceRequest': (Map<String, dynamic> data) =>
      PcoCalendarEventResourceRequest.fromJson(data),
  'calendar-EventTime': (Map<String, dynamic> data) =>
      PcoCalendarEventTime.fromJson(data),
  'calendar-Feed': (Map<String, dynamic> data) =>
      PcoCalendarFeed.fromJson(data),
  'calendar-Organization': (Map<String, dynamic> data) =>
      PcoCalendarOrganization.fromJson(data),
  'calendar-Person': (Map<String, dynamic> data) =>
      PcoCalendarPerson.fromJson(data),
  'calendar-ReportTemplate': (Map<String, dynamic> data) =>
      PcoCalendarReportTemplate.fromJson(data),
  'calendar-Resource': (Map<String, dynamic> data) =>
      PcoCalendarResource.fromJson(data),
  'calendar-ResourceApprovalGroup': (Map<String, dynamic> data) =>
      PcoCalendarResourceApprovalGroup.fromJson(data),
  'calendar-ResourceBooking': (Map<String, dynamic> data) =>
      PcoCalendarResourceBooking.fromJson(data),
  'calendar-ResourceFolder': (Map<String, dynamic> data) =>
      PcoCalendarResourceFolder.fromJson(data),
  'calendar-ResourceQuestion': (Map<String, dynamic> data) =>
      PcoCalendarResourceQuestion.fromJson(data),
  'calendar-ResourceSuggestion': (Map<String, dynamic> data) =>
      PcoCalendarResourceSuggestion.fromJson(data),
  'calendar-RoomSetup': (Map<String, dynamic> data) =>
      PcoCalendarRoomSetup.fromJson(data),
  'calendar-Tag': (Map<String, dynamic> data) => PcoCalendarTag.fromJson(data),
  'calendar-TagGroup': (Map<String, dynamic> data) =>
      PcoCalendarTagGroup.fromJson(data),
  'giving-Batch': (Map<String, dynamic> data) => PcoGivingBatch.fromJson(data),
  'giving-BatchGroup': (Map<String, dynamic> data) =>
      PcoGivingBatchGroup.fromJson(data),
  'giving-Campus': (Map<String, dynamic> data) =>
      PcoGivingCampus.fromJson(data),
  'giving-Designation': (Map<String, dynamic> data) =>
      PcoGivingDesignation.fromJson(data),
  'giving-DesignationRefund': (Map<String, dynamic> data) =>
      PcoGivingDesignationRefund.fromJson(data),
  'giving-Donation': (Map<String, dynamic> data) =>
      PcoGivingDonation.fromJson(data),
  'giving-Fund': (Map<String, dynamic> data) => PcoGivingFund.fromJson(data),
  'giving-Label': (Map<String, dynamic> data) => PcoGivingLabel.fromJson(data),
  'giving-Organization': (Map<String, dynamic> data) =>
      PcoGivingOrganization.fromJson(data),
  'giving-PaymentMethod': (Map<String, dynamic> data) =>
      PcoGivingPaymentMethod.fromJson(data),
  'giving-PaymentSource': (Map<String, dynamic> data) =>
      PcoGivingPaymentSource.fromJson(data),
  'giving-Person': (Map<String, dynamic> data) =>
      PcoGivingPerson.fromJson(data),
  'giving-Pledge': (Map<String, dynamic> data) =>
      PcoGivingPledge.fromJson(data),
  'giving-PledgeCampaign': (Map<String, dynamic> data) =>
      PcoGivingPledgeCampaign.fromJson(data),
  'giving-RecurringDonation': (Map<String, dynamic> data) =>
      PcoGivingRecurringDonation.fromJson(data),
  'giving-RecurringDonationDesignation': (Map<String, dynamic> data) =>
      PcoGivingRecurringDonationDesignation.fromJson(data),
  'giving-Refund': (Map<String, dynamic> data) =>
      PcoGivingRefund.fromJson(data),
  'groups-Attendance': (Map<String, dynamic> data) =>
      PcoGroupsAttendance.fromJson(data),
  'groups-Event': (Map<String, dynamic> data) => PcoGroupsEvent.fromJson(data),
  'groups-Group': (Map<String, dynamic> data) => PcoGroupsGroup.fromJson(data),
  'groups-GroupType': (Map<String, dynamic> data) =>
      PcoGroupsGroupType.fromJson(data),
  'groups-Location': (Map<String, dynamic> data) =>
      PcoGroupsLocation.fromJson(data),
  'groups-Membership': (Map<String, dynamic> data) =>
      PcoGroupsMembership.fromJson(data),
  'groups-Organization': (Map<String, dynamic> data) =>
      PcoGroupsOrganization.fromJson(data),
  'groups-Person': (Map<String, dynamic> data) =>
      PcoGroupsPerson.fromJson(data),
  'groups-Resource': (Map<String, dynamic> data) =>
      PcoGroupsResource.fromJson(data),
  'groups-Tag': (Map<String, dynamic> data) => PcoGroupsTag.fromJson(data),
  'groups-TagGroup': (Map<String, dynamic> data) =>
      PcoGroupsTagGroup.fromJson(data),
  'webhooks-AvailableEvent': (Map<String, dynamic> data) =>
      PcoWebhooksAvailableEvent.fromJson(data),
  'webhooks-Delivery': (Map<String, dynamic> data) =>
      PcoWebhooksDelivery.fromJson(data),
  'webhooks-Event': (Map<String, dynamic> data) =>
      PcoWebhooksEvent.fromJson(data),
  'webhooks-Organization': (Map<String, dynamic> data) =>
      PcoWebhooksOrganization.fromJson(data),
  'webhooks-Subscription': (Map<String, dynamic> data) =>
      PcoWebhooksSubscription.fromJson(data),
};

PcoResource? buildResource<T extends PcoResource>(
    String application, Map<String, dynamic> data) {
  var key = application + '-' + (data['type'] ?? 'null');
  if (_constructors.containsKey(key)) {
    return _constructors[key]!(data);
  }
  return null;
}

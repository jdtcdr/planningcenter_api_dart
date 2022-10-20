/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.597459
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

library pco;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// base parts
part 'pco_base/pco_api_base.dart';
part 'pco_base/pco_constructors.dart';
part 'pco_base/pco_file.dart';
part 'pco_base/pco_resource_base.dart';
part 'pco_base/pco_class_extensions.dart';



// parts for services
part 'pco_apps/services/services_arrangement.dart';
part 'pco_apps/services/services_arrangement_sections.dart';
part 'pco_apps/services/services_attachment.dart';
part 'pco_apps/services/services_attachment_activity.dart';
part 'pco_apps/services/services_attachment_type.dart';
part 'pco_apps/services/services_available_signup.dart';
part 'pco_apps/services/services_blockout.dart';
part 'pco_apps/services/services_blockout_date.dart';
part 'pco_apps/services/services_blockout_exception.dart';
part 'pco_apps/services/services_blockout_schedule_conflict.dart';
part 'pco_apps/services/services_ccli_reporting.dart';
part 'pco_apps/services/services_contributor.dart';
part 'pco_apps/services/services_custom_slide.dart';
part 'pco_apps/services/services_email_template.dart';
part 'pco_apps/services/services_email_template_rendered_response.dart';
part 'pco_apps/services/services_folder.dart';
part 'pco_apps/services/services_folder_path.dart';
part 'pco_apps/services/services_item.dart';
part 'pco_apps/services/services_item_note.dart';
part 'pco_apps/services/services_item_note_category.dart';
part 'pco_apps/services/services_item_time.dart';
part 'pco_apps/services/services_key.dart';
part 'pco_apps/services/services_layout.dart';
part 'pco_apps/services/services_live.dart';
part 'pco_apps/services/services_live_controller.dart';
part 'pco_apps/services/services_media.dart';
part 'pco_apps/services/services_media_schedule.dart';
part 'pco_apps/services/services_needed_position.dart';
part 'pco_apps/services/services_organization.dart';
part 'pco_apps/services/services_person.dart';
part 'pco_apps/services/services_person_team_position_assignment.dart';
part 'pco_apps/services/services_plan.dart';
part 'pco_apps/services/services_plan_note.dart';
part 'pco_apps/services/services_plan_note_category.dart';
part 'pco_apps/services/services_plan_person.dart';
part 'pco_apps/services/services_plan_person_time.dart';
part 'pco_apps/services/services_plan_template.dart';
part 'pco_apps/services/services_plan_time.dart';
part 'pco_apps/services/services_public_view.dart';
part 'pco_apps/services/services_report_template.dart';
part 'pco_apps/services/services_schedule.dart';
part 'pco_apps/services/services_scheduled_person.dart';
part 'pco_apps/services/services_series.dart';
part 'pco_apps/services/services_service_type.dart';
part 'pco_apps/services/services_service_type_path.dart';
part 'pco_apps/services/services_signup_sheet.dart';
part 'pco_apps/services/services_signup_sheet_metadata.dart';
part 'pco_apps/services/services_skipped_attachment.dart';
part 'pco_apps/services/services_song.dart';
part 'pco_apps/services/services_song_schedule.dart';
part 'pco_apps/services/services_songbook_status.dart';
part 'pco_apps/services/services_split_team_rehearsal_assignment.dart';
part 'pco_apps/services/services_tag.dart';
part 'pco_apps/services/services_tag_group.dart';
part 'pco_apps/services/services_team.dart';
part 'pco_apps/services/services_team_leader.dart';
part 'pco_apps/services/services_team_position.dart';
part 'pco_apps/services/services_text_setting.dart';
part 'pco_apps/services/services_time_preference_option.dart';
part 'pco_apps/services/services_zoom.dart';


// parts for check-ins
part 'pco_apps/check_ins/check_ins_attendance_type.dart';
part 'pco_apps/check_ins/check_ins_check_in.dart';
part 'pco_apps/check_ins/check_ins_check_in_group.dart';
part 'pco_apps/check_ins/check_ins_check_in_time.dart';
part 'pco_apps/check_ins/check_ins_event.dart';
part 'pco_apps/check_ins/check_ins_event_label.dart';
part 'pco_apps/check_ins/check_ins_event_period.dart';
part 'pco_apps/check_ins/check_ins_event_time.dart';
part 'pco_apps/check_ins/check_ins_headcount.dart';
part 'pco_apps/check_ins/check_ins_label.dart';
part 'pco_apps/check_ins/check_ins_location.dart';
part 'pco_apps/check_ins/check_ins_location_event_period.dart';
part 'pco_apps/check_ins/check_ins_location_event_time.dart';
part 'pco_apps/check_ins/check_ins_location_label.dart';
part 'pco_apps/check_ins/check_ins_option.dart';
part 'pco_apps/check_ins/check_ins_organization.dart';
part 'pco_apps/check_ins/check_ins_pass.dart';
part 'pco_apps/check_ins/check_ins_person.dart';
part 'pco_apps/check_ins/check_ins_person_event.dart';
part 'pco_apps/check_ins/check_ins_station.dart';
part 'pco_apps/check_ins/check_ins_theme.dart';


// parts for people
part 'pco_apps/people/people_address.dart';
part 'pco_apps/people/people_anniversary_couples.dart';
part 'pco_apps/people/people_app.dart';
part 'pco_apps/people/people_birthday_people.dart';
part 'pco_apps/people/people_campus.dart';
part 'pco_apps/people/people_carrier.dart';
part 'pco_apps/people/people_condition.dart';
part 'pco_apps/people/people_connected_person.dart';
part 'pco_apps/people/people_email.dart';
part 'pco_apps/people/people_field_datum.dart';
part 'pco_apps/people/people_field_definition.dart';
part 'pco_apps/people/people_field_option.dart';
part 'pco_apps/people/people_form.dart';
part 'pco_apps/people/people_form_field.dart';
part 'pco_apps/people/people_form_field_option.dart';
part 'pco_apps/people/people_form_submission.dart';
part 'pco_apps/people/people_form_submission_value.dart';
part 'pco_apps/people/people_household.dart';
part 'pco_apps/people/people_household_membership.dart';
part 'pco_apps/people/people_inactive_reason.dart';
part 'pco_apps/people/people_list.dart';
part 'pco_apps/people/people_list_category.dart';
part 'pco_apps/people/people_list_result.dart';
part 'pco_apps/people/people_list_share.dart';
part 'pco_apps/people/people_list_star.dart';
part 'pco_apps/people/people_mailchimp_sync_status.dart';
part 'pco_apps/people/people_marital_status.dart';
part 'pco_apps/people/people_message.dart';
part 'pco_apps/people/people_message_group.dart';
part 'pco_apps/people/people_name_prefix.dart';
part 'pco_apps/people/people_name_suffix.dart';
part 'pco_apps/people/people_note.dart';
part 'pco_apps/people/people_note_category.dart';
part 'pco_apps/people/people_note_category_share.dart';
part 'pco_apps/people/people_note_category_subscription.dart';
part 'pco_apps/people/people_organization.dart';
part 'pco_apps/people/people_organization_statistics.dart';
part 'pco_apps/people/people_people_import.dart';
part 'pco_apps/people/people_people_import_conflict.dart';
part 'pco_apps/people/people_people_import_history.dart';
part 'pco_apps/people/people_person.dart';
part 'pco_apps/people/people_person_app.dart';
part 'pco_apps/people/people_person_merger.dart';
part 'pco_apps/people/people_phone_number.dart';
part 'pco_apps/people/people_platform_notification.dart';
part 'pco_apps/people/people_report.dart';
part 'pco_apps/people/people_rule.dart';
part 'pco_apps/people/people_school_option.dart';
part 'pco_apps/people/people_service_time.dart';
part 'pco_apps/people/people_social_profile.dart';
part 'pco_apps/people/people_tab.dart';
part 'pco_apps/people/people_workflow.dart';
part 'pco_apps/people/people_workflow_card.dart';
part 'pco_apps/people/people_workflow_card_activity.dart';
part 'pco_apps/people/people_workflow_card_note.dart';
part 'pco_apps/people/people_workflow_category.dart';
part 'pco_apps/people/people_workflow_share.dart';
part 'pco_apps/people/people_workflow_step.dart';
part 'pco_apps/people/people_workflow_step_assignee_summary.dart';


// parts for calendar
part 'pco_apps/calendar/calendar_attachment.dart';
part 'pco_apps/calendar/calendar_conflict.dart';
part 'pco_apps/calendar/calendar_event.dart';
part 'pco_apps/calendar/calendar_event_instance.dart';
part 'pco_apps/calendar/calendar_event_resource_request.dart';
part 'pco_apps/calendar/calendar_event_time.dart';
part 'pco_apps/calendar/calendar_feed.dart';
part 'pco_apps/calendar/calendar_organization.dart';
part 'pco_apps/calendar/calendar_person.dart';
part 'pco_apps/calendar/calendar_report_template.dart';
part 'pco_apps/calendar/calendar_resource.dart';
part 'pco_apps/calendar/calendar_resource_approval_group.dart';
part 'pco_apps/calendar/calendar_resource_booking.dart';
part 'pco_apps/calendar/calendar_resource_folder.dart';
part 'pco_apps/calendar/calendar_resource_question.dart';
part 'pco_apps/calendar/calendar_resource_suggestion.dart';
part 'pco_apps/calendar/calendar_room_setup.dart';
part 'pco_apps/calendar/calendar_tag.dart';
part 'pco_apps/calendar/calendar_tag_group.dart';


// parts for giving
part 'pco_apps/giving/giving_batch.dart';
part 'pco_apps/giving/giving_batch_group.dart';
part 'pco_apps/giving/giving_campus.dart';
part 'pco_apps/giving/giving_designation.dart';
part 'pco_apps/giving/giving_designation_refund.dart';
part 'pco_apps/giving/giving_donation.dart';
part 'pco_apps/giving/giving_fund.dart';
part 'pco_apps/giving/giving_label.dart';
part 'pco_apps/giving/giving_organization.dart';
part 'pco_apps/giving/giving_payment_method.dart';
part 'pco_apps/giving/giving_payment_source.dart';
part 'pco_apps/giving/giving_person.dart';
part 'pco_apps/giving/giving_pledge.dart';
part 'pco_apps/giving/giving_pledge_campaign.dart';
part 'pco_apps/giving/giving_recurring_donation.dart';
part 'pco_apps/giving/giving_recurring_donation_designation.dart';
part 'pco_apps/giving/giving_refund.dart';


// parts for groups
part 'pco_apps/groups/groups_attendance.dart';
part 'pco_apps/groups/groups_event.dart';
part 'pco_apps/groups/groups_group.dart';
part 'pco_apps/groups/groups_group_type.dart';
part 'pco_apps/groups/groups_location.dart';
part 'pco_apps/groups/groups_membership.dart';
part 'pco_apps/groups/groups_organization.dart';
part 'pco_apps/groups/groups_person.dart';
part 'pco_apps/groups/groups_resource.dart';
part 'pco_apps/groups/groups_tag.dart';
part 'pco_apps/groups/groups_tag_group.dart';


// parts for webhooks
part 'pco_apps/webhooks/webhooks_available_event.dart';
part 'pco_apps/webhooks/webhooks_delivery.dart';
part 'pco_apps/webhooks/webhooks_event.dart';
part 'pco_apps/webhooks/webhooks_organization.dart';
part 'pco_apps/webhooks/webhooks_subscription.dart';

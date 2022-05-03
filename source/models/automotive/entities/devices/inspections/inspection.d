module models.automotive.entities.devices.inspections.inspection;

@safe:
import models.automotive;

// Record of inspections carried out on a given vehicle or device over time.
class DATMDeviceInspection : DOOPEntity {
  mixin(EntityThis!("ATMDeviceInspection"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "deviceId": UUIDAttributeClass, // Vehicle or device being inspected."]),
        "deviceInspectionChecklistId": UUIDAttributeClass, // Inspection checklist used for the inspection."]),
        "deviceInspectionId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "result": StringAttributeClass, // Outcome of inspection (pending, pass, warning or fail)."]),
        "result_display": StringAttributeClass, //
        "serviceAppointmentId": UUIDAttributeClass, // Service appointment at which this inspection was conducted."]),
        "serviceOrderId": UUIDAttributeClass, // Service order being worked during this inspection."]),
        "stateCode": StringAttributeClass, // Status of the Device Inspection"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Inspection"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_deviceinspections");
  }
}
mixin(EntityCalls!("ATMDeviceInspection"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceInspection);
  
  auto entity = ATMDeviceInspection;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
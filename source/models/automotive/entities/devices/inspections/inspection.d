module models.automotive.entities.devices.inspections.inspection;

@safe:
import models.automotive;

// Record of inspections carried out on a given vehicle or device over time.
class DATMDeviceInspection : DOOPEntity {
  mixin(EntityThis!("ATMDeviceInspection"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "deviceId": UUIDAttribute, // Vehicle or device being inspected."]),
        "deviceInspectionChecklistId": UUIDAttribute, // Inspection checklist used for the inspection."]),
        "deviceInspectionId": UUIDAttribute, // Unique identifier for entity instances"]),
        "result": StringAttribute, // Outcome of inspection (pending, pass, warning or fail)."]),
        "result_display": StringAttribute, //
        "serviceAppointmentId": UUIDAttribute, // Service appointment at which this inspection was conducted."]),
        "serviceOrderId": UUIDAttribute, // Service order being worked during this inspection."]),
        "stateCode": StringAttribute, // Status of the Device Inspection"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Inspection"]),
        "statusCode_display": StringAttribute, //
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
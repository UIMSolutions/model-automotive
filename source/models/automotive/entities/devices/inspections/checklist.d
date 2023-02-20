module models.automotive.entities.devices.inspections.checklist;

@safe:
import models.automotive;

// Specific checklist of a given type, such as a pre-delivery inspection or a checklist used for a specific type of service.
class DATMDeviceInspectionChecklist : DOOPEntity {
  mixin(EntityThis!("ATMDeviceInspectionChecklist"));
  
  override void initialize(DConfigurationValue configSettings = null) {
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
          "deviceInspectionChecklistTypeId": UUIDAttribute, // Type of inspection checklist."]),
          "stateCode": StringAttribute, // Status of the Device Inspection Checklist"]),
          "stateCode_display": StringAttribute, //
          "statusCode": StringAttribute, // Reason for the status of the Device Inspection Checklist"]),
          "statusCode_display": StringAttribute, //
       ])
      .registerPath("automotive_deviceinspectionchecklists");
  }
}
mixin(EntityCalls!("ATMDeviceInspectionChecklist"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceInspectionChecklist);
  
  auto entity = ATMDeviceInspectionChecklist;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
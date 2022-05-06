module models.automotive.entities.devices.inspections.checklist_type;

@safe:
import models.automotive;

// Type of checklist, such as pre-delivery or service.
class DATMDeviceInspectionChecklistType: DOOPEntity {
  mixin(EntityThis!("ATMDeviceInspectionChecklistType"));
  
  override void initialize() {
    super.initialize;

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
        "deviceInspectionChecklistTypeId": UUIDAttribute, // Unique identifier for entity instances"]), 
        "stateCode": StringAttribute, // Status of the Device Inspection Checklist Type"]), 
        "stateCode_display": StringAttribute, // 
        "statusCode": StringAttribute, // Reason for the status of the Device Inspection Checklist Type"]), 
        "statusCode_display": StringAttribute, // 
      ])
      .registerPath("automotive_deviceinspectionchecklisttypes");
  }
}
mixin(EntityCalls!("ATMDeviceInspectionChecklistType"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceInspectionChecklistType);
  
  auto entity = ATMDeviceInspectionChecklistType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
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
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]), 
        "importSequenceNumber": IntegerAttributeClass, //Unique identifier of the data import or data migration that created this record."]), 
        "ownerId": UUIDAttributeClass, // Owner Id"]), 
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]), 
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]), 
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity."]), 
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]), 
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]), 
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]), 
        "deviceInspectionChecklistTypeId": UUIDAttributeClass, // Unique identifier for entity instances"]), 
        "stateCode": StringAttributeClass, // Status of the Device Inspection Checklist Type"]), 
        "stateCode_display": StringAttributeClass, // 
        "statusCode": StringAttributeClass, // Reason for the status of the Device Inspection Checklist Type"]), 
        "statusCode_display": StringAttributeClass, // 
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
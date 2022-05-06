module models.automotive.entities.devices.class_;

@safe:
import models.automotive;

// Family of vehicles or devices for the specific brand provided by the manufacturer.
class DATMDeviceClass : DOOPEntity {
  mixin(EntityThis!("ATMDeviceClass"));
  
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
        "entityImage": StringAttribute, //
        "code": StringAttribute, // Unique number for the device class."]),
        "deviceBrandId": UUIDAttribute, // Brand that produces the device."]),
        "deviceClassId": UUIDAttribute, // Unique identifier for entity instances"]),
        "deviceTypeId": UUIDAttribute, // Type of device class."]),
        "stateCode": StringAttribute, // Status of the Device Class"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Class"]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_deviceclasses");
  }
}
mixin(EntityCalls!("ATMDeviceClass"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceClass);
  
  auto entity = ATMDeviceClass;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
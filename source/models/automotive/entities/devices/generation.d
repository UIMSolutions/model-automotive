module models.automotive.entities.devices.generation;

@safe:
import models.automotive;

// Specific period in the evolution of a device class over time.
class DATMDeviceGeneration : DOOPEntity {
  mixin(EntityThis!("ATMDeviceGeneration"));
  
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
        "entityImage": StringAttributeClass, //
        "code": StringAttributeClass, // Unique code of the specific generation of this device."]),
        "deviceBrandId": UUIDAttributeClass, // Brand of the device."]),
        "deviceClassId": UUIDAttributeClass, // Class of the device."]),
        "deviceGenerationId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "fromYear": StringAttributeClass, // Year the generation was introduced."]),
        "toYear": StringAttributeClass, // Last year of the generation."]),
        "stateCode": StringAttributeClass, // Status of the Device Generation"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Generation"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicegenerations");
  }
}
mixin(EntityCalls!("ATMDeviceGeneration"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceGeneration);
  
  auto entity = ATMDeviceGeneration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
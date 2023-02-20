module models.automotive.entities.devices.generation;

@safe:
import models.automotive;

// Specific period in the evolution of a device class over time.
class DATMDeviceGeneration : DOOPEntity {
  mixin(EntityThis!("ATMDeviceGeneration"));
  
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
        "entityImage": StringAttribute, //
        "code": StringAttribute, // Unique code of the specific generation of this device."]),
        "deviceBrandId": UUIDAttribute, // Brand of the device."]),
        "deviceClassId": UUIDAttribute, // Class of the device."]),
        "deviceGenerationId": UUIDAttribute, // Unique identifier for entity instances"]),
        "fromYear": StringAttribute, // Year the generation was introduced."]),
        "toYear": StringAttribute, // Last year of the generation."]),
        "stateCode": StringAttribute, // Status of the Device Generation"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Generation"]),
        "statusCode_display": StringAttribute, //
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
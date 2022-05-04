module models.automotive.entities.devices.type;

@safe:
import models.automotive;

// Group of undeleted system users and undeleted teams. DeviceTypes can be used to control access to specific objects.
class DATMDeviceType : DOOPEntity {
  mixin(EntityThis!("ATMDeviceType"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttributeClass, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttributeClass, // Owner Id "]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created. "]),
        "entityImage": StringAttributeClass, //
        "code": StringAttributeClass, // Unique code for the device type. "]),
        "deviceTypeId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "stateCode": StringAttributeClass, // Status of the Device Type "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Type "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicetypes");
  }
}
mixin(EntityCalls!("ATMDeviceType"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceType);
  
  auto entity = ATMDeviceType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
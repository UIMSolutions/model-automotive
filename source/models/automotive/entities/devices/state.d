module models.automotive.entities.devices.state;

@safe:
import models.automotive;

// Describes state of a vehicle or device, such as New, Used or Scrapped.
class DATMDeviceState : DOOPEntity {
  mixin(EntityThis!("ATMDeviceState"));
  
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
        "deviceStateId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "inventoryStatus": StringAttributeClass, // Inventory status of the device (available, not available, fleet, on loan, etc.). "]),
        "inventoryStatus_display": StringAttributeClass, //
        "ownershipStatus": StringAttributeClass, // Is the vehicle or device titled or untitled? "]),
        "ownershipStatus_display": StringAttributeClass, //
        "ownershipType": StringAttributeClass, // Ownership category (financing provider, customer or dealer)? "]),
        "ownershipType_display": StringAttributeClass, //
        "tradeStatus": StringAttributeClass, // Indicates whether the vehicle or device is new, certified used or used. "]),
        "tradeStatus_display": StringAttributeClass, //
        "stateCode": StringAttributeClass, // Status of the Device State "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device State "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicestates");
  }
}
mixin(EntityCalls!("ATMDeviceState"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceState);
  
  auto entity = ATMDeviceState;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
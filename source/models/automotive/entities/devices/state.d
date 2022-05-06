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
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttribute, // Owner Id "]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. "]),
        "deviceStateId": UUIDAttribute, // Unique identifier for entity instances "]),
        "inventoryStatus": StringAttribute, // Inventory status of the device (available, not available, fleet, on loan, etc.). "]),
        "inventoryStatus_display": StringAttribute, //
        "ownershipStatus": StringAttribute, // Is the vehicle or device titled or untitled? "]),
        "ownershipStatus_display": StringAttribute, //
        "ownershipType": StringAttribute, // Ownership category (financing provider, customer or dealer)? "]),
        "ownershipType_display": StringAttribute, //
        "tradeStatus": StringAttribute, // Indicates whether the vehicle or device is new, certified used or used. "]),
        "tradeStatus_display": StringAttribute, //
        "stateCode": StringAttribute, // Status of the Device State "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device State "]),
        "statusCode_display": StringAttribute, //
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
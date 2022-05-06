module models.automotive.entities.devices.style;

@safe:
import models.automotive;

// Distinctive form or type of vehicle or device such as sedan or station wagon car, wheeled or crawler excavator, and so on.
class DATMDeviceStyle : DOOPEntity {
  mixin(EntityThis!("ATMDeviceStyle"));
  
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
        "entityImage": StringAttribute, // 
        "code": StringAttribute, // Unique code for the style. "]), 
        "deviceStyleId": UUIDAttribute, // Unique identifier for entity instances "]), 
        "deviceTypeId": UUIDAttribute, // Device type for which this style is applicable. "]), 
        "stateCode": StringAttribute, // Status of the Device Style "]), 
        "stateCode_display": StringAttribute, // 
        "statusCode": StringAttribute, // Reason for the status of the Device Style "]), 
        "statusCode_display": StringAttribute, // 
      ])
      .registerPath("automotive_devicestyles");
  }
}
mixin(EntityCalls!("ATMDeviceStyle"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceStyle);
  
  auto entity = ATMDeviceStyle;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
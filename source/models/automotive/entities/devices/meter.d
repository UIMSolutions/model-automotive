module models.automotive.entities.devices.meter;

@safe:
import models.automotive;

// Usage meter attached to a specific vehicle or device, such as odometer or fuel gauge.
class DATMMeter : DOOPEntity {
  mixin(EntityThis!("ATMMeter"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttribute, // Owner Id "]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. "]),
        "deviceId": UUIDAttribute, // Parent device for this device meter. "]),
        "deviceMeasureId": UUIDAttribute, // Type of measurement for this device meter. "]),
        "deviceMeterId": UUIDAttribute, // Unique identifier for entity instances "]),
        "expectedMaximum": StringAttribute, // The anticipated maximum amount. "]),
        "expectedMinimum": StringAttribute, // The anticipated minimum amount. "]),
        "isPrimary": StringAttribute, // Is this the primary device? "]),
        "offset": StringAttribute, // Any variation from the original settings. "]),
        "serialNumber": IntegerAttribute, //Unique number of the device meter. "]),
        "stateCode": StringAttribute, // Status of the Device Meter "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Meter "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_meters");
  }
}
mixin(EntityCalls!("ATMMeter"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMMeter);
  
  auto entity = ATMMeter;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
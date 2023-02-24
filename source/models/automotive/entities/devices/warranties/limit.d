module models.automotive.entities.devices.warranties.limit;

@safe:
import models.automotive;

// Limits of a specific warranty on a specific vehicle or device, such as maximum mileage or specific expiration date.
class DATMDeviceWarrantyLimit : DEntity {
  mixin(EntityThis!("ATMDeviceWarrantyLimit"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "deviceId": UUIDAttribute, // Device for which this warranty limit applies. "]),
        "deviceMeasureId": UUIDAttribute, // Metric used in tracking this warranty. "]),
        "deviceWarrantyLimitId": UUIDAttribute, // Unique identifier for entity instances "]),
        "unitId": UUIDAttribute, // Component by which the warranty metric is to be measured. "]),
        "value": StringAttribute, // Value of the warranty limit. "]),
        "warrantyLimitId": UUIDAttribute, // Parent warranty limit for this device warranty limit. "]),
        "stateCode": StringAttribute, // Status of the Device Warranty Limit "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Warranty Limit "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicewarrantylimits");
  }
}
mixin(EntityCalls!("ATMDeviceWarrantyLimit"));

version(test_model_automotive) { unittest {
    assert(APLFeedback);
    assert(ATMDeviceWarrantyLimit);
  
  auto entity = ATMDeviceWarrantyLimit;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
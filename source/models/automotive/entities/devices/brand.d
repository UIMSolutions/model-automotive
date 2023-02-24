module models.automotive.entities.devices.brand;

@safe:
import models.automotive;

// Brand name of a vehicle or device manufacturer, main vendor for a group of devices or manufacturer or main vendor for supplier items.
class DATMDeviceBrand : DEntity {
  mixin(EntityThis!("ATMDeviceBrand"));
  
  override void initialize(DConfigurationValue configSettings = null) {
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
        "code": StringAttribute, // Unique number of device brand."]),
        "deviceBrandId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": StringAttribute, // Status of the Device Brand"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Brand"]),
        "statusCode_display": StringAttribute, // automotive/"]),
      ])
      .registerPath("automotive_devicebrands");
  }
}
mixin(EntityCalls!("ATMDeviceBrand"));

version(test_model_automotive) { unittest {
    assert(APLFeedback);
    assert(ATMDeviceBrand);
  
  auto entity = ATMDeviceBrand;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
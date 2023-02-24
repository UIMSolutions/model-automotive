module models.automotive.entities.devices.type;

@safe:
import models.automotive;

// Group of undeleted system users and undeleted teams. DeviceTypes can be used to control access to specific objects.
class DATMDeviceType : DEntity {
  mixin(EntityThis!("ATMDeviceType"));
  
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
        "entityImage": StringAttribute, //
        "code": StringAttribute, // Unique code for the device type. "]),
        "deviceTypeId": UUIDAttribute, // Unique identifier for entity instances "]),
        "stateCode": StringAttribute, // Status of the Device Type "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Type "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicetypes");
  }
}
mixin(EntityCalls!("ATMDeviceType"));

version(test_model_automotive) { unittest {
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
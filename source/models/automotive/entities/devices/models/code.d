module source.models.automotive.entities.devices.models.code;

@safe:
import models.automotive;

// Specific configuration of a device, such as a vehicle of specific generation, body style, engine option and transmission.
class DATMDeviceModelCode : DOOPEntity {
  mixin(EntityThis!("ATMDeviceModelCode"));
  
  override void initialize() {
    super.initialize;

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
        "entityImage": StringAttribute, //
        "code": StringAttribute, // Unique code for this device model. "]),
        "deviceBrandId": UUIDAttribute, // Brand of the model code. "]),
        "deviceClassId": UUIDAttribute, // Class of the model code. "]),
        "deviceGenerationId": UUIDAttribute, // Generation of the model code. "]),
        "deviceModelCodeId": UUIDAttribute, // Unique identifier for entity instances "]),
        "deviceModelId": UUIDAttribute, // Model of the model code. "]),
        "deviceStyleId": UUIDAttribute, // Body style of the model code. "]),
        "deviceTypeId": UUIDAttribute, // Type of device for this model. "]),
        "specificationId": UUIDAttribute, // Specification of this model code. "]),
        "stateCode": StringAttribute, // Status of the Device Model Code "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Model Code "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicemodelcodes");
  }
}
mixin(EntityCalls!("ATMDeviceModelCode"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceModelCode);
  
  auto entity = ATMDeviceModelCode;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
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
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who last modified the territory."]),
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
        "code": StringAttributeClass, // Unique code for this device model. "]),
        "deviceBrandId": UUIDAttributeClass, // Brand of the model code. "]),
        "deviceClassId": UUIDAttributeClass, // Class of the model code. "]),
        "deviceGenerationId": UUIDAttributeClass, // Generation of the model code. "]),
        "deviceModelCodeId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "deviceModelId": UUIDAttributeClass, // Model of the model code. "]),
        "deviceStyleId": UUIDAttributeClass, // Body style of the model code. "]),
        "deviceTypeId": UUIDAttributeClass, // Type of device for this model. "]),
        "specificationId": UUIDAttributeClass, // Specification of this model code. "]),
        "stateCode": StringAttributeClass, // Status of the Device Model Code "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Model Code "]),
        "statusCode_display": StringAttributeClass, //
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
module models.automotive.entities.devices.variant;

@safe:
import models.automotive;

// Standard variant of a device model code, with special characteristics such as a specific OEM-fitted accessory package or being a limited edition.
class DATMDeviceVariant : DOOPEntity {
  mixin(EntityThis!("ATMDeviceVariant"));
  
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
        "code": StringAttributeClass, // Unique code of the specific variant of this device. "]),
        "deviceBrandId": UUIDAttributeClass, // Brand of the variant. "]),
        "deviceClassId": UUIDAttributeClass, // Class of the variant. "]),
        "deviceGenerationId": UUIDAttributeClass, // Generation of the variant. "]),
        "deviceModelCodeId": UUIDAttributeClass, // Model code of the variant. "]),
        "deviceModelId": UUIDAttributeClass, // Model of the variant. "]),
        "deviceStyleId": UUIDAttributeClass, // Style of the variant. "]),
        "deviceTypeId": UUIDAttributeClass, // Type of device for this variant. "]),
        "deviceVariantId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "specificationId": UUIDAttributeClass, // Specification of this variant. "]),
        "stateCode": StringAttributeClass, // Status of the Device Variant "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Variant "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicevariants");
  }
}
mixin(EntityCalls!("ATMDeviceVariant"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceVariant);
  
  auto entity = ATMDeviceVariant;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
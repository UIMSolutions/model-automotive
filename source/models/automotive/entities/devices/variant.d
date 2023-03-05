/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.automotive.entities.devices.variant;

@safe:
import models.automotive;

// Standard variant of a device model code, with special characteristics such as a specific OEM-fitted accessory package or being a limited edition.
class DATMDeviceVariant : DEntity {
  mixin(EntityThis!("ATMDeviceVariant"));
  
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
        "code": StringAttribute, // Unique code of the specific variant of this device. "]),
        "deviceBrandId": UUIDAttribute, // Brand of the variant. "]),
        "deviceClassId": UUIDAttribute, // Class of the variant. "]),
        "deviceGenerationId": UUIDAttribute, // Generation of the variant. "]),
        "deviceModelCodeId": UUIDAttribute, // Model code of the variant. "]),
        "deviceModelId": UUIDAttribute, // Model of the variant. "]),
        "deviceStyleId": UUIDAttribute, // Style of the variant. "]),
        "deviceTypeId": UUIDAttribute, // Type of device for this variant. "]),
        "deviceVariantId": UUIDAttribute, // Unique identifier for entity instances "]),
        "specificationId": UUIDAttribute, // Specification of this variant. "]),
        "stateCode": StringAttribute, // Status of the Device Variant "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Variant "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicevariants");
  }
}
mixin(EntityCalls!("ATMDeviceVariant"));

version(test_model_automotive) { unittest {
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
/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.automotive.entities.devices.models.code;

@safe:
import models.automotive;

// Specific configuration of a device, such as a vehicle of specific generation, body style, engine option and transmission.
class DDeviceModelCodeEntity : DEntity {
  mixin(EntityThis!("DeviceModelCodeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute,
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
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
      ])
      .registerPath("automotive_devices.models.codes");
  }
}
mixin(EntityCalls!("DeviceModelCodeEntity"));

version(test_model_automotive) { unittest {
    assert(APLFeedback);
    assert(DeviceModelCodeEntity);
  
  auto entity = DeviceModelCodeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
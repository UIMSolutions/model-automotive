/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.automotive.entities.devices.warranties.warranty;

@safe:
import models.automotive;

// Relationship indicating that a specific warranty applies to a specific vehicle or device.
class DATMDeviceWarranty : DEntity {
  mixin(EntityThis!("ATMDeviceWarranty"));
  
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
        "deviceId": UUIDAttribute, // Vehicle or device for which this warranty applies. "]),
        "deviceWarrantyId": UUIDAttribute, // Unique identifier for entity instances "]),
        "issuedOn": TimestampAttribute, //Date that the warranty is issued. "]),
        "validFrom": StringAttribute, // Last date for which the warranty is valid. "]),
        "validTo": StringAttribute, // First date for which the warranty is valid. "]),
        "warrantyId": UUIDAttribute, // Warranty that is applied to this device. "]),
        "stateCode": StringAttribute, // Status of the Device Warranty "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Warranty "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicewarranties");
  }
}
mixin(EntityCalls!("ATMDeviceWarranty"));

version(test_model_automotive) { unittest {
    assert(APLFeedback);
    assert(ATMDeviceWarranty);
  
  auto entity = ATMDeviceWarranty;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
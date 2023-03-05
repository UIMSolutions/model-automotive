/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.automotive.entities.devices.measures.measure;

@safe:
import models.automotive;

// Specific measurable quantity related to a vehicle or device that is used to track usage over time, such as miles driven, engine hours or time since purchase.
class DATMDeviceMeasure : DEntity {
  mixin(EntityThis!("ATMDeviceMeasure"));
  
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
        "deviceMeasureId": UUIDAttribute, // Unique identifier for entity instances"]),
        "displayNumberOfDecimals": StringAttribute, // The number for decimals to display for the measurement value."]),
        "unitId": UUIDAttribute, // Unit used for the measurement."]),
        "stateCode": StringAttribute, // Status of the Device Measure"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Measurec"]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicemeasures");
  }
}
mixin(EntityCalls!("ATMDeviceMeasure"));

version(test_model_automotive) { unittest {
    assert(APLFeedback);
    assert(ATMDeviceMeasure);
  
  auto entity = ATMDeviceMeasure;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
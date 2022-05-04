module models.automotive.entities.devices.measures.measure;

@safe:
import models.automotive;

// Specific measurable quantity related to a vehicle or device that is used to track usage over time, such as miles driven, engine hours or time since purchase.
class DATMDeviceMeasure : DOOPEntity {
  mixin(EntityThis!("ATMDeviceMeasure"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "deviceMeasureId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "displayNumberOfDecimals": StringAttributeClass, // The number for decimals to display for the measurement value."]),
        "unitId": UUIDAttributeClass, // Unit used for the measurement."]),
        "stateCode": StringAttributeClass, // Status of the Device Measure"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Measurec"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicemeasures");
  }
}
mixin(EntityCalls!("ATMDeviceMeasure"));

version(test_library) {
  unittest {
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
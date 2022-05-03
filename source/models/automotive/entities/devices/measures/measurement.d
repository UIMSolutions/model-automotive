module models.automotive.entities.devices.measures.measurement;

@safe:
import models.automotive;

// Record of usage measurements for a given vehicle or device over time.
class DATMDeviceMeasurement : DOOPEntity {
  mixin(EntityThis!("ATMDeviceMeasurement"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated. "]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttributeClass, // Owner Id "]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created. "]),
        "deviceId": UUIDAttributeClass, // Device for this device measurement. "]),
        "deviceMeasureId": UUIDAttributeClass, // Type of measurement for this meter. "]),
        "deviceMeasurementId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "deviceMeterId": UUIDAttributeClass, // Meter from which this usage measurement was taken. "]),
        "measuredById": UUIDAttributeClass, // Person who recorded the measurement. "]),
        "measuredOn": OOPTimestampAttribute.descriptions(["en":"Date that the measurement was recorded. "]),
        "measuredValue": StringAttributeClass, // Value of the measurement. "]),
        "serviceOrderId": UUIDAttributeClass, // Parent service order for when this measurement was taken. "]),
        "value": StringAttributeClass, // Value of the measurement. "]),
        "stateCode": StringAttributeClass, // Status of the Device Measurement "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Measurement "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicemeasurements");
  }
}
mixin(EntityCalls!("ATMDeviceMeasurement"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceMeasurement);
  
  auto entity = ATMDeviceMeasurement;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
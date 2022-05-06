module models.automotive.entities.devices.license_plate;

@safe:
import models.automotive;

// Record of license plates assigned to a given vehicle or device over time.
class DATMDeviceLicensePlate : DOOPEntity {
  mixin(EntityThis!("ATMDeviceLicensePlate"));
  
  override void initialize() {
    super.initialize;

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
        "comments": StringAttribute, // Notes or remarks about the license plate."]),
        "deviceId": UUIDAttribute, // Vehicle for which the license plate is registered."]),
        "deviceLicensePlateId": UUIDAttribute, // Unique identifier for entity instances"]),
        "issuedBy": UUIDAttribute, //Issuer of the license plate."]),
        "registrationNumber": IntegerAttribute, //Name of the vehicle license plate."]),
        "validFrom": StringAttribute, // First day for which the license plate is valid."]),
        "validTo": StringAttribute, // Last day for which the license plate is valid."]),
        "stateCode": StringAttribute, // Status of the Device License Plate"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device License Plate"]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicelicenseplates");
  }
}
mixin(EntityCalls!("ATMDeviceLicensePlate"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceLicensePlate);
  
  auto entity = ATMDeviceLicensePlate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
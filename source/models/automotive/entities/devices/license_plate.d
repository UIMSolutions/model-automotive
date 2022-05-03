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
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "comments": StringAttributeClass, // Notes or remarks about the license plate."]),
        "deviceId": UUIDAttributeClass, // Vehicle for which the license plate is registered."]),
        "deviceLicensePlateId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "issuedBy": OOPLinkAttribute("aplUser").descriptions(["en":"Issuer of the license plate."]),
        "registrationNumber": OOPIntegerAttribute.descriptions(["en":"Name of the vehicle license plate."]),
        "validFrom": StringAttributeClass, // First day for which the license plate is valid."]),
        "validTo": StringAttributeClass, // Last day for which the license plate is valid."]),
        "stateCode": StringAttributeClass, // Status of the Device License Plate"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device License Plate"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicelicenseplates");
  }
}
mixin(EntityCalls!("ATMDeviceLicensePlate"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceLicensePlate);
  
  auto entity = ATMDeviceLicensePlate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
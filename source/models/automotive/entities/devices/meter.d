module models.automotive.entities.devices.meter;

@safe:
import models.automotive;

// Usage meter attached to a specific vehicle or device, such as odometer or fuel gauge.
class DATMMeter : DOOPEntity {
  mixin(EntityThis!("ATMMeter"));
  
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
        "deviceId": UUIDAttributeClass, // Parent device for this device meter. "]),
        "deviceMeasureId": UUIDAttributeClass, // Type of measurement for this device meter. "]),
        "deviceMeterId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "expectedMaximum": StringAttributeClass, // The anticipated maximum amount. "]),
        "expectedMinimum": StringAttributeClass, // The anticipated minimum amount. "]),
        "isPrimary": StringAttributeClass, // Is this the primary device? "]),
        "offset": StringAttributeClass, // Any variation from the original settings. "]),
        "serialNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the device meter. "]),
        "stateCode": StringAttributeClass, // Status of the Device Meter "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Meter "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_meters");
  }
}
mixin(EntityCalls!("ATMMeter"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMMeter);
  
  auto entity = ATMMeter;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
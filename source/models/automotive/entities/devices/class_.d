module models.automotive.entities.devices.class_;

@safe:
import models.automotive;

// Family of vehicles or devices for the specific brand provided by the manufacturer.
class DATMDeviceClass : DOOPEntity {
  mixin(EntityThis!("ATMDeviceClass"));
  
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
        "entityImage": StringAttributeClass, //
        "code": StringAttributeClass, // Unique number for the device class."]),
        "deviceBrandId": UUIDAttributeClass, // Brand that produces the device."]),
        "deviceClassId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "deviceTypeId": UUIDAttributeClass, // Type of device class."]),
        "stateCode": StringAttributeClass, // Status of the Device Class"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Class"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_deviceclasses");
  }
}
mixin(EntityCalls!("ATMDeviceClass"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceClass);
  
  auto entity = ATMDeviceClass;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
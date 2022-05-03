module models.automotive.entities.devices.generation;

@safe:
import models.automotive;

// Specific period in the evolution of a device class over time.
class DATMDeviceGeneration : DOOPEntity {
  mixin(EntityThis!("ATMDeviceGeneration"));
  
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
        "code": StringAttributeClass, // Unique code of the specific generation of this device."]),
        "deviceBrandId": UUIDAttributeClass, // Brand of the device."]),
        "deviceClassId": UUIDAttributeClass, // Class of the device."]),
        "deviceGenerationId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "fromYear": StringAttributeClass, // Year the generation was introduced."]),
        "toYear": StringAttributeClass, // Last year of the generation."]),
        "stateCode": StringAttributeClass, // Status of the Device Generation"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Generation"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicegenerations");
  }
}
mixin(EntityCalls!("ATMDeviceGeneration"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceGeneration);
  
  auto entity = ATMDeviceGeneration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
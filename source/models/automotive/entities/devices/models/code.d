module source.models.automotive.entities.devices.models.code;

@safe:
import models.automotive;

// Specific configuration of a device, such as a vehicle of specific generation, body style, engine option and transmission.
class DATMDeviceModelCode : DOOPEntity {
  mixin(EntityThis!("ATMDeviceModelCode"));
  
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
        "entityImage": StringAttributeClass, //
        "code": StringAttributeClass, // Unique code for this device model. "]),
        "deviceBrandId": UUIDAttributeClass, // Brand of the model code. "]),
        "deviceClassId": UUIDAttributeClass, // Class of the model code. "]),
        "deviceGenerationId": UUIDAttributeClass, // Generation of the model code. "]),
        "deviceModelCodeId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "deviceModelId": UUIDAttributeClass, // Model of the model code. "]),
        "deviceStyleId": UUIDAttributeClass, // Body style of the model code. "]),
        "deviceTypeId": UUIDAttributeClass, // Type of device for this model. "]),
        "specificationId": UUIDAttributeClass, // Specification of this model code. "]),
        "stateCode": StringAttributeClass, // Status of the Device Model Code "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Model Code "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicemodelcodes");
  }
}
mixin(EntityCalls!("ATMDeviceModelCode"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceModelCode);
  
  auto entity = ATMDeviceModelCode;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
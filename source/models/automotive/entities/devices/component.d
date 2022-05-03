module models.automotive.entities.devices.component;

@safe:
import models.automotive;

// Physical or logical part of a vehicle or device.
class DATMDeviceComponent : DOOPEntity {
  mixin(EntityThis!("ATMDeviceComponent"));
  
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
        "behavior": StringAttributeClass, // Describes if the component is fixed, movable or replaceable."]),
        "behavior_display": StringAttributeClass, //
        "componentDeviceId": UUIDAttributeClass, // Reference to a separate sub-device that the component may represent."]),
        "configurationOptionId": UUIDAttributeClass, // Specific option for the component on the device."]),
        "deviceComponentId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "deviceId": UUIDAttributeClass, // Parent vehicle or device that contains the component."]),
        "deviceMeterId": UUIDAttributeClass, // Reference to a meter that the component may represent."]),
        "deviceSensorId": UUIDAttributeClass, // Reference to a sensor that the component may represent."]),
        "itemName": StringAttributeClass, // Name of the component."]),
        "parentComponentId": UUIDAttributeClass, // Larger component for which the component is a part."]),
        "quantity": StringAttributeClass, // Number of component needed."]),
        "serialNumber": OOPIntegerAttribute.descriptions(["en":"Unique number for component."]),
        "specificationAccessoryId": UUIDAttributeClass, // Accessory for which the component is a part."]),
        "type": StringAttributeClass, // Type of component (standard, option, accessory, device, meter, sensor or custom)."]),
        "type_display": StringAttributeClass, //
        "stateCode": StringAttributeClass, // Status of the Device Component"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Component"]),
        "statusCode_display": StringAttributeClass, // automotive/"])
      ])
      .registerPath("automotive_devicecomponents");
  }
}
mixin(EntityCalls!("ATMDeviceComponent"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceComponent);
  
  auto entity = ATMDeviceComponent;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
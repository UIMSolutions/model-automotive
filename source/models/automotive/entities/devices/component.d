module models.automotive.devices.component;

@safe:
import models.automotive;;

// Physical or logical part of a vehicle or device.
class DINDDeviceComponent : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "entityImage": OOPAttributeString.descriptions(["en":""]),
      "behavior": OOPAttributeString.descriptions(["en":"Describes if the component is fixed, movable or replaceable."]),
      "behavior_display": OOPAttributeString.descriptions(["en":""]),
      "componentDeviceId": OOPAttributeUUID.descriptions(["en":"Reference to a separate sub-device that the component may represent."]),
      "configurationOptionId": OOPAttributeUUID.descriptions(["en":"Specific option for the component on the device."]),
      "deviceComponentId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "deviceId": OOPAttributeUUID.descriptions(["en":"Parent vehicle or device that contains the component."]),
      "deviceMeterId": OOPAttributeUUID.descriptions(["en":"Reference to a meter that the component may represent."]),
      "deviceSensorId": OOPAttributeUUID.descriptions(["en":"Reference to a sensor that the component may represent."]),
      "itemName": OOPAttributeString.descriptions(["en":"Name of the component."]),
      "parentComponentId": OOPAttributeUUID.descriptions(["en":"Larger component for which the component is a part."]),
      "quantity": OOPAttributeString.descriptions(["en":"Number of component needed."]),
      "serialNumber": OOPAttributeNumber.descriptions(["en":"Unique number for component."]),
      "specificationAccessoryId": OOPAttributeUUID.descriptions(["en":"Accessory for which the component is a part."]),
      "type": OOPAttributeString.descriptions(["en":"Type of component (standard, option, accessory, device, meter, sensor or custom)."]),
      "type_display": OOPAttributeString.descriptions(["en":""]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Component"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Component"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":"automotive/"])
    ]);
  }

  override string entityClass() { return "indDeviceComponent"; }
  override string entityClasses() { return "indDeviceComponents"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceComponent() { return new DINDDeviceComponent; } 
auto INDDeviceComponent(Json json) { return new DINDDeviceComponent(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceComponent);
  
  auto entity = INDDeviceComponent;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
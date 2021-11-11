module model.automotive.devices.model_code;

@safe:
import model.automotive;

// Specific configuration of a device, such as a vehicle of specific generation, body style, engine option and transmission.
class DINDDeviceModelCode : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated. "]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id "]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team. "]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only. "]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created. "]),
      "entityImage": OOPAttributeString.descriptions(["en":""]),
      "code": OOPAttributeString.descriptions(["en":"Unique code for this device model. "]),
      "deviceBrandId": OOPAttributeUUID.descriptions(["en":"Brand of the model code. "]),
      "deviceClassId": OOPAttributeUUID.descriptions(["en":"Class of the model code. "]),
      "deviceGenerationId": OOPAttributeUUID.descriptions(["en":"Generation of the model code. "]),
      "deviceModelCodeId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "deviceModelId": OOPAttributeUUID.descriptions(["en":"Model of the model code. "]),
      "deviceStyleId": OOPAttributeUUID.descriptions(["en":"Body style of the model code. "]),
      "deviceTypeId": OOPAttributeUUID.descriptions(["en":"Type of device for this model. "]),
      "specificationId": OOPAttributeUUID.descriptions(["en":"Specification of this model code. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Model Code "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Model Code "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceModelCode"; }
  override string entityClasses() { return "indDeviceModelCodes"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceModelCode() { return new DINDDeviceModelCode; } 
auto INDDeviceModelCode(Json json) { return new DINDDeviceModelCode(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceModelCode);
  
  auto entity = INDDeviceModelCode;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
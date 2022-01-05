module models.automotive.devices.variant;

@safe:
import models.automotive;;

// Standard variant of a device model code, with special characteristics such as a specific OEM-fitted accessory package or being a limited edition.
class DINDDeviceVariant : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
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
      "code": OOPAttributeString.descriptions(["en":"Unique code of the specific variant of this device. "]),
      "deviceBrandId": OOPAttributeUUID.descriptions(["en":"Brand of the variant. "]),
      "deviceClassId": OOPAttributeUUID.descriptions(["en":"Class of the variant. "]),
      "deviceGenerationId": OOPAttributeUUID.descriptions(["en":"Generation of the variant. "]),
      "deviceModelCodeId": OOPAttributeUUID.descriptions(["en":"Model code of the variant. "]),
      "deviceModelId": OOPAttributeUUID.descriptions(["en":"Model of the variant. "]),
      "deviceStyleId": OOPAttributeUUID.descriptions(["en":"Style of the variant. "]),
      "deviceTypeId": OOPAttributeUUID.descriptions(["en":"Type of device for this variant. "]),
      "deviceVariantId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "specificationId": OOPAttributeUUID.descriptions(["en":"Specification of this variant. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Variant "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Variant "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceVariant"; }
  override string entityClasses() { return "indDeviceVariants"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceVariant() { return new DINDDeviceVariant; } 
auto INDDeviceVariant(Json json) { return new DINDDeviceVariant(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceVariant);
  
  auto entity = INDDeviceVariant;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
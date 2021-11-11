module model.automotive.devices.device;

@safe:
import model.automotive;

// Physical piece of equipment of considerable value such as a vehicle or a device such as an excavator, that can be tracked through its entire life cycle of trade, ownership and service and may be related to one or more customers over time.
class DINDDevice : DOOPEntity {
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
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "businessOperationId": OOPAttributeUUID.descriptions(["en":"Department/team at business operation responsible for vehicle or device."]),
      "chassisNumber": OOPAttributeNumber.descriptions(["en":"Unique number for the vehicle's engine; last 6 digits of the VIN."]),
      "condition": OOPAttributeString.descriptions(["en":"Current condition of the vehicle or device (excellent, good, fair, poor or unknown)."]),
      "condition_display": OOPAttributeString.descriptions(["en":""]),
      "deviceBrandId": OOPAttributeUUID.descriptions(["en":"Brand of the vehicle or device."]),
      "deviceClassId": OOPAttributeUUID.descriptions(["en":"Class of the vehicle or device."]),
      "deviceGenerationId": OOPAttributeUUID.descriptions(["en":"Generation of the vehicle or device's model."]),
      "deviceId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "deviceModelCodeId": OOPAttributeUUID.descriptions(["en":"Configuration of the vehicle or device model."]),
      "deviceModelId": OOPAttributeUUID.descriptions(["en":"Model of the vehicle or device."]),
      "deviceNumber": OOPAttributeNumber.descriptions(["en":"Unique number of the vehicle or device."]),
      "deviceStateId": OOPAttributeUUID.descriptions(["en":"Status of the vehicle or device, which may represent a given combination of inventory, ownership and trade status."]),
      "deviceStyleId": OOPAttributeUUID.descriptions(["en":"Body style of the vehicle or device."]),
      "deviceTypeId": OOPAttributeUUID.descriptions(["en":"Type of this vehicle or device."]),
      "deviceVariantId": OOPAttributeUUID.descriptions(["en":"Specific configuration for this vehicle or device."]),
      "listPrice": OOPAttributeString.descriptions(["en":"Sale price of vehicle or device."]),
      "listPriceBase": OOPAttributeString.descriptions(["en":"Value of the List Price in base currency."]),
      "listPriceComments": OOPAttributeString.descriptions(["en":"Comments regarding the listed price for this vehicle or device."]),
      "registrationNumber": OOPAttributeNumber.descriptions(["en":"Registration number for this vehicle or device."]),
      "specificationId": OOPAttributeUUID.descriptions(["en":"Specification tied to this vehicle or device."]),
      "Url": OOPAttributeUrl.descriptions(["en":"Webpage for vehicle or device."]),
      "vendorsStockNumber": OOPAttributeNumber.descriptions(["en":"Stock number for vehicle or device."]),
      "VIN": OOPAttributeString.descriptions(["en":"Unique code used to identify an vehicle or device."]),
      "year": OOPAttributeString.descriptions(["en":"Manufacture year of the vehicle or device."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
    ]);
  }

  override string entityClass() { return "indDevice"; }
  override string entityClasses() { return "indDevices"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDevice() { return new DINDDevice; } 
auto INDDevice(Json json) { return new DINDDevice(json); } 

unittest {
  version(uim_entities) {
    assert(INDDevice);
  
  auto entity = INDDevice;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
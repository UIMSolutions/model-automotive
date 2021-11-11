module model.automotive.devices.registration;

@safe:
import model.automotive;

// Record of registrations of a specific vehicle or device to specific customers over time.
class DINDDeviceRegistration : DOOPEntity {
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
      "comments": OOPAttributeString.descriptions(["en":"Notes or remarks about the vehicle or device registration. "]),
      "customerId": OOPAttributeUUID.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. "]),
      "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact. "]),
      "deviceId": OOPAttributeUUID.descriptions(["en":"Vehicle or device that is registered. "]),
      "deviceLicensePlateId": OOPAttributeUUID.descriptions(["en":"License plate number for the vehicle or device that is registered. "]),
      "deviceRegistrationId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "role": OOPAttributeString.descriptions(["en":"Role of the person on the registration (owner, custodian or operator). "]),
      "role_display": OOPAttributeString.descriptions(["en":""]),
      "validFrom": OOPAttributeString.descriptions(["en":"First date at which the registration is valid. "]),
      "validTo": OOPAttributeString.descriptions(["en":"Last date at which the registration is valid. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Registration "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Registration "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceRegistration"; }
  override string entityClasses() { return "indDeviceRegistrations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceRegistration() { return new DINDDeviceRegistration; } 
auto INDDeviceRegistration(Json json) { return new DINDDeviceRegistration(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceRegistration);
  
  auto entity = INDDeviceRegistration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
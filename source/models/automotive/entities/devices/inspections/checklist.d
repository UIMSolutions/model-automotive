module model.automotive.devices.inspections.checklist;

@safe:
import model.automotive;

// Specific checklist of a given type, such as a pre-delivery inspection or a checklist used for a specific type of service.
class DINDDeviceInspectionChecklist : DOOPEntity {
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
      "deviceId": OOPAttributeUUID.descriptions(["en":"Vehicle or device being inspected."]),
      "deviceInspectionChecklistId": OOPAttributeUUID.descriptions(["en":"Inspection checklist used for the inspection."]),
      "deviceInspectionChecklistTypeId": OOPAttributeUUID.descriptions(["en":"Type of inspection checklist."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Inspection Checklist"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Inspection Checklist"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceInspectionChecklist"; }
  override string entityClasses() { return "indDeviceInspectionChecklists"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceInspectionChecklist() { return new DINDDeviceInspectionChecklist; } 
auto INDDeviceInspectionChecklist(Json json) { return new DINDDeviceInspectionChecklist(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceInspectionChecklist);
  
  auto entity = INDDeviceInspectionChecklist;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
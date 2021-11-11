module model.automotive.devices.observation;

@safe:
import model.automotive;

// Important observation on the state of a given vehicle or device, typically resulting from an inspection.
class DINDDeviceObservation : DOOPEntity {
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
      "deviceId": OOPAttributeUUID.descriptions(["en":"Vehicle or device for which the observation applies. "]),
      "deviceInspectionId": OOPAttributeUUID.descriptions(["en":"Parent inspection record for the observation. "]),
      "deviceObservationId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "deviceObservationTypeId": OOPAttributeUUID.descriptions(["en":"The observation documented for this vehicle or device. "]),
      "serviceAppointmentId": OOPAttributeUUID.descriptions(["en":"Parent service appointment booked when this observation was documented. "]),
      "serviceOrderId": OOPAttributeUUID.descriptions(["en":"Parent service order being worked when this observation was documented. "]),
      "severity": OOPAttributeString.descriptions(["en":"Severity level (observation, warning of failure). "]),
      "severity_display": OOPAttributeString.descriptions(["en":""]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Observation "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Observation "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceObservation"; }
  override string entityClasses() { return "indDeviceObservations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceObservation() { return new DINDDeviceObservation; } 
auto INDDeviceObservation(Json json) { return new DINDDeviceObservation(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceObservation);
  
  auto entity = INDDeviceObservation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
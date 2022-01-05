module models.automotive.devices.observation_type;

@safe:
import models.automotive;;

// Type of observation, indicating severity and nature of the observation and typically used for classification and filtering of observations.
class DINDDeviceObservationType : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Parameter"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Parameter"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "allowSkillUpdateByResource": OOPAttributeString.descriptions(["en":"Allow resources to update their skills via the Project Finder Mobile app."]),
      "defaultOrganizationalUnit": OOPAttributeString.descriptions(["en":"Select the default organizational unit that will be used for new resources."]),
      "defaultWorkTemplate": OOPAttributeString.descriptions(["en":"Select the default work template for new projects."]),
      "invoiceFrequency": OOPAttributeString.descriptions(["en":"Select the default frequency for generating invoices."]),
      "projectManagerRole": OOPAttributeString.descriptions(["en":"Shows the default role to be used when a project manager is added to the project team."]),
      "projectResourceRequirementsVisibleToRe": OOPAttributeString.descriptions(["en":"Select whether project resource requirements are visible to resources."]),
      "resourceAllocationMode": OOPAttributeString.descriptions(["en":"Select the default method for allocating resources to projects."]),
      "resourceAllocationMode_display": OOPAttributeString.descriptions(["en":""]),
      "teamMemberRole": OOPAttributeString.descriptions(["en":"Shows the default role to be used when a team member is added to the project team."]),
    ]);
  }

  override string entityClass() { return "indDeviceObservationType"; }
  override string entityClasses() { return "indDeviceObservationTypes"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto INDDeviceObservationType() { return new DINDDeviceObservationType; } 
auto INDDeviceObservationType(Json json) { return new DINDDeviceObservationType(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceObservationType);
  
  auto entity = INDDeviceObservationType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
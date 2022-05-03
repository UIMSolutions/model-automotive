module models.automotive.entities.devices.observations.type;

@safe:
import models.automotive;

// Type of observation, indicating severity and nature of the observation and typically used for classification and filtering of observations.
class DATMDeviceObservationType : DOOPEntity {
  mixin(EntityThis!("ATMDeviceObservationType"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPIntegerAttribute.descriptions(["en":"Status of the Project Parameter"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": OOPIntegerAttribute.descriptions(["en":"Reason for the status of the Project Parameter"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPIntegerAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "allowSkillUpdateByResource": StringAttributeClass, // Allow resources to update their skills via the Project Finder Mobile app."]),
        "defaultOrganizationalUnit": StringAttributeClass, // Select the default organizational unit that will be used for new resources."]),
        "defaultWorkTemplate": StringAttributeClass, // Select the default work template for new projects."]),
        "invoiceFrequency": StringAttributeClass, // Select the default frequency for generating invoices."]),
        "projectManagerRole": StringAttributeClass, // Shows the default role to be used when a project manager is added to the project team."]),
        "projectResourceRequirementsVisibleToRe": StringAttributeClass, // Select whether project resource requirements are visible to resources."]),
        "resourceAllocationMode": StringAttributeClass, // Select the default method for allocating resources to projects."]),
        "resourceAllocationMode_display": StringAttributeClass, //
        "teamMemberRole": StringAttributeClass, // Shows the default role to be used when a team member is added to the project team."]),
      ])
      .registerPath("automotive_deviceolbservationtypes");
  }
}
mixin(EntityCalls!("ATMDeviceObservationType"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceObservationType);
  
  auto entity = ATMDeviceObservationType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
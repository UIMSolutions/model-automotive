module models.automotive.entities.devices.observations.type;

@safe:
import models.automotive;

// Type of observation, indicating severity and nature of the observation and typically used for classification and filtering of observations.
class DATMDeviceObservationType : DEntity {
  mixin(EntityThis!("ATMDeviceObservationType"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": IntegerAttribute, //Status of the Project Parameter"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, //Reason for the status of the Project Parameter"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, //Time zone code that was in use when the record was created."]),
        "allowSkillUpdateByResource": StringAttribute, // Allow resources to update their skills via the Project Finder Mobile app."]),
        "defaultOrganizationalUnit": StringAttribute, // Select the default organizational unit that will be used for new resources."]),
        "defaultWorkTemplate": StringAttribute, // Select the default work template for new projects."]),
        "invoiceFrequency": StringAttribute, // Select the default frequency for generating invoices."]),
        "projectManagerRole": StringAttribute, // Shows the default role to be used when a project manager is added to the project team."]),
        "projectResourceRequirementsVisibleToRe": StringAttribute, // Select whether project resource requirements are visible to resources."]),
        "resourceAllocationMode": StringAttribute, // Select the default method for allocating resources to projects."]),
        "resourceAllocationMode_display": StringAttribute, //
        "teamMemberRole": StringAttribute, // Shows the default role to be used when a team member is added to the project team."]),
      ])
      .registerPath("automotive_deviceolbservationtypes");
  }
}
mixin(EntityCalls!("ATMDeviceObservationType"));

version(test_model_automotive) { unittest {
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
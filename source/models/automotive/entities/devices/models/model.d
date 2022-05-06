module models.automotive.entities.devices.model;

@safe:
import models.automotive;

// Sub-type of a device class, which may be identified by specific engine option, body styles and other common characteristics. Breaks down further into device model codes.
class DATMDeviceModel : DOOPEntity {
  mixin(EntityThis!("ATMDeviceModel"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttribute, // Owner Id "]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. "]),
        "entityImage": StringAttribute, //
        "code": StringAttribute, // Unique code for this model. "]),
        "deviceBrandId": UUIDAttribute, // Brand of the model. "]),
        "deviceClassId": UUIDAttribute, // Class of the model. "]),
        "deviceGenerationId": UUIDAttribute, // Generation of the model. "]),
        "deviceModelId": UUIDAttribute, // Unique identifier for entity instances "]),
        "deviceStyleId": UUIDAttribute, // Style of the model. "]),
        "deviceTypeId": UUIDAttribute, // Type of device for this model. "]),
        "stateCode": StringAttribute, // Status of the Device Model "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Model "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicemodels");
  }
}
mixin(EntityCalls!("ATMDeviceModel"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceModel);
  
  auto entity = ATMDeviceModel;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
module models.automotive.entities.devices.registration;

@safe:
import models.automotive;

// Record of registrations of a specific vehicle or device to specific customers over time.
class DATMDeviceRegistration : DOOPEntity {
  mixin(EntityThis!("ATMDeviceRegistration"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttribute, // Owner Id "]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. "]),
        "comments": StringAttribute, // Notes or remarks about the vehicle or device registration. "]),
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. "]),
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact. "]),
        "deviceId": UUIDAttribute, // Vehicle or device that is registered. "]),
        "deviceLicensePlateId": UUIDAttribute, // License plate number for the vehicle or device that is registered. "]),
        "deviceRegistrationId": UUIDAttribute, // Unique identifier for entity instances "]),
        "role": StringAttribute, // Role of the person on the registration (owner, custodian or operator). "]),
        "role_display": StringAttribute, //
        "validFrom": StringAttribute, // First date at which the registration is valid. "]),
        "validTo": StringAttribute, // Last date at which the registration is valid. "]),
        "stateCode": StringAttribute, // Status of the Device Registration "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Registration "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_deviceregistrations");
  }
}
mixin(EntityCalls!("ATMDeviceRegistration"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceRegistration);
  
  auto entity = ATMDeviceRegistration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
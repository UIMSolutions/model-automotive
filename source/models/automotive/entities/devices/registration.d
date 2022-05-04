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
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttributeClass, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttributeClass, // Owner Id "]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created. "]),
        "comments": StringAttributeClass, // Notes or remarks about the vehicle or device registration. "]),
        "customerId": UUIDAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. "]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact. "]),
        "deviceId": UUIDAttributeClass, // Vehicle or device that is registered. "]),
        "deviceLicensePlateId": UUIDAttributeClass, // License plate number for the vehicle or device that is registered. "]),
        "deviceRegistrationId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "role": StringAttributeClass, // Role of the person on the registration (owner, custodian or operator). "]),
        "role_display": StringAttributeClass, //
        "validFrom": StringAttributeClass, // First date at which the registration is valid. "]),
        "validTo": StringAttributeClass, // Last date at which the registration is valid. "]),
        "stateCode": StringAttributeClass, // Status of the Device Registration "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Registration "]),
        "statusCode_display": StringAttributeClass, //
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
// Auto-generated. Do not edit!

// (in-package rr_openrover_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SmartBatteryStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.over_charged_alarm = null;
      this.terminate_charge_alarm = null;
      this.over_temp_alarm = null;
      this.terminate_discharge_alarm = null;
      this.remaining_capacity_alarm = null;
      this.remaining_time_alarm = null;
      this.initialized = null;
      this.discharging = null;
      this.fully_charged = null;
      this.fully_discharged = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('over_charged_alarm')) {
        this.over_charged_alarm = initObj.over_charged_alarm
      }
      else {
        this.over_charged_alarm = false;
      }
      if (initObj.hasOwnProperty('terminate_charge_alarm')) {
        this.terminate_charge_alarm = initObj.terminate_charge_alarm
      }
      else {
        this.terminate_charge_alarm = false;
      }
      if (initObj.hasOwnProperty('over_temp_alarm')) {
        this.over_temp_alarm = initObj.over_temp_alarm
      }
      else {
        this.over_temp_alarm = false;
      }
      if (initObj.hasOwnProperty('terminate_discharge_alarm')) {
        this.terminate_discharge_alarm = initObj.terminate_discharge_alarm
      }
      else {
        this.terminate_discharge_alarm = false;
      }
      if (initObj.hasOwnProperty('remaining_capacity_alarm')) {
        this.remaining_capacity_alarm = initObj.remaining_capacity_alarm
      }
      else {
        this.remaining_capacity_alarm = false;
      }
      if (initObj.hasOwnProperty('remaining_time_alarm')) {
        this.remaining_time_alarm = initObj.remaining_time_alarm
      }
      else {
        this.remaining_time_alarm = false;
      }
      if (initObj.hasOwnProperty('initialized')) {
        this.initialized = initObj.initialized
      }
      else {
        this.initialized = false;
      }
      if (initObj.hasOwnProperty('discharging')) {
        this.discharging = initObj.discharging
      }
      else {
        this.discharging = false;
      }
      if (initObj.hasOwnProperty('fully_charged')) {
        this.fully_charged = initObj.fully_charged
      }
      else {
        this.fully_charged = false;
      }
      if (initObj.hasOwnProperty('fully_discharged')) {
        this.fully_discharged = initObj.fully_discharged
      }
      else {
        this.fully_discharged = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SmartBatteryStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [over_charged_alarm]
    bufferOffset = _serializer.bool(obj.over_charged_alarm, buffer, bufferOffset);
    // Serialize message field [terminate_charge_alarm]
    bufferOffset = _serializer.bool(obj.terminate_charge_alarm, buffer, bufferOffset);
    // Serialize message field [over_temp_alarm]
    bufferOffset = _serializer.bool(obj.over_temp_alarm, buffer, bufferOffset);
    // Serialize message field [terminate_discharge_alarm]
    bufferOffset = _serializer.bool(obj.terminate_discharge_alarm, buffer, bufferOffset);
    // Serialize message field [remaining_capacity_alarm]
    bufferOffset = _serializer.bool(obj.remaining_capacity_alarm, buffer, bufferOffset);
    // Serialize message field [remaining_time_alarm]
    bufferOffset = _serializer.bool(obj.remaining_time_alarm, buffer, bufferOffset);
    // Serialize message field [initialized]
    bufferOffset = _serializer.bool(obj.initialized, buffer, bufferOffset);
    // Serialize message field [discharging]
    bufferOffset = _serializer.bool(obj.discharging, buffer, bufferOffset);
    // Serialize message field [fully_charged]
    bufferOffset = _serializer.bool(obj.fully_charged, buffer, bufferOffset);
    // Serialize message field [fully_discharged]
    bufferOffset = _serializer.bool(obj.fully_discharged, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SmartBatteryStatus
    let len;
    let data = new SmartBatteryStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [over_charged_alarm]
    data.over_charged_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [terminate_charge_alarm]
    data.terminate_charge_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [over_temp_alarm]
    data.over_temp_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [terminate_discharge_alarm]
    data.terminate_discharge_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [remaining_capacity_alarm]
    data.remaining_capacity_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [remaining_time_alarm]
    data.remaining_time_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [initialized]
    data.initialized = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [discharging]
    data.discharging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fully_charged]
    data.fully_charged = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fully_discharged]
    data.fully_discharged = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rr_openrover_driver_msgs/SmartBatteryStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a952a8feedea27cab4667095d349334c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool over_charged_alarm
    bool terminate_charge_alarm
    bool over_temp_alarm
    bool terminate_discharge_alarm
    bool remaining_capacity_alarm
    bool remaining_time_alarm
    
    bool initialized
    bool discharging
    bool fully_charged
    bool fully_discharged
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SmartBatteryStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.over_charged_alarm !== undefined) {
      resolved.over_charged_alarm = msg.over_charged_alarm;
    }
    else {
      resolved.over_charged_alarm = false
    }

    if (msg.terminate_charge_alarm !== undefined) {
      resolved.terminate_charge_alarm = msg.terminate_charge_alarm;
    }
    else {
      resolved.terminate_charge_alarm = false
    }

    if (msg.over_temp_alarm !== undefined) {
      resolved.over_temp_alarm = msg.over_temp_alarm;
    }
    else {
      resolved.over_temp_alarm = false
    }

    if (msg.terminate_discharge_alarm !== undefined) {
      resolved.terminate_discharge_alarm = msg.terminate_discharge_alarm;
    }
    else {
      resolved.terminate_discharge_alarm = false
    }

    if (msg.remaining_capacity_alarm !== undefined) {
      resolved.remaining_capacity_alarm = msg.remaining_capacity_alarm;
    }
    else {
      resolved.remaining_capacity_alarm = false
    }

    if (msg.remaining_time_alarm !== undefined) {
      resolved.remaining_time_alarm = msg.remaining_time_alarm;
    }
    else {
      resolved.remaining_time_alarm = false
    }

    if (msg.initialized !== undefined) {
      resolved.initialized = msg.initialized;
    }
    else {
      resolved.initialized = false
    }

    if (msg.discharging !== undefined) {
      resolved.discharging = msg.discharging;
    }
    else {
      resolved.discharging = false
    }

    if (msg.fully_charged !== undefined) {
      resolved.fully_charged = msg.fully_charged;
    }
    else {
      resolved.fully_charged = false
    }

    if (msg.fully_discharged !== undefined) {
      resolved.fully_discharged = msg.fully_discharged;
    }
    else {
      resolved.fully_discharged = false
    }

    return resolved;
    }
};

module.exports = SmartBatteryStatus;

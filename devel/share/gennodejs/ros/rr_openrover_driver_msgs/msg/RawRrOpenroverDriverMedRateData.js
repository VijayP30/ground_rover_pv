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

class RawRrOpenroverDriverMedRateData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.reg_pwr_total_current = null;
      this.reg_motor_fb_rpm_left = null;
      this.reg_motor_fb_rpm_right = null;
      this.reg_flipper_fb_position_pot1 = null;
      this.reg_flipper_fb_position_pot2 = null;
      this.reg_motor_fb_current_left = null;
      this.reg_motor_fb_current_right = null;
      this.reg_motor_charger_state = null;
      this.reg_power_a_current = null;
      this.reg_power_b_current = null;
      this.reg_motor_flipper_angle = null;
      this.battery_current_a = null;
      this.battery_current_b = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('reg_pwr_total_current')) {
        this.reg_pwr_total_current = initObj.reg_pwr_total_current
      }
      else {
        this.reg_pwr_total_current = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_fb_rpm_left')) {
        this.reg_motor_fb_rpm_left = initObj.reg_motor_fb_rpm_left
      }
      else {
        this.reg_motor_fb_rpm_left = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_fb_rpm_right')) {
        this.reg_motor_fb_rpm_right = initObj.reg_motor_fb_rpm_right
      }
      else {
        this.reg_motor_fb_rpm_right = 0;
      }
      if (initObj.hasOwnProperty('reg_flipper_fb_position_pot1')) {
        this.reg_flipper_fb_position_pot1 = initObj.reg_flipper_fb_position_pot1
      }
      else {
        this.reg_flipper_fb_position_pot1 = 0;
      }
      if (initObj.hasOwnProperty('reg_flipper_fb_position_pot2')) {
        this.reg_flipper_fb_position_pot2 = initObj.reg_flipper_fb_position_pot2
      }
      else {
        this.reg_flipper_fb_position_pot2 = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_fb_current_left')) {
        this.reg_motor_fb_current_left = initObj.reg_motor_fb_current_left
      }
      else {
        this.reg_motor_fb_current_left = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_fb_current_right')) {
        this.reg_motor_fb_current_right = initObj.reg_motor_fb_current_right
      }
      else {
        this.reg_motor_fb_current_right = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_charger_state')) {
        this.reg_motor_charger_state = initObj.reg_motor_charger_state
      }
      else {
        this.reg_motor_charger_state = 0;
      }
      if (initObj.hasOwnProperty('reg_power_a_current')) {
        this.reg_power_a_current = initObj.reg_power_a_current
      }
      else {
        this.reg_power_a_current = 0;
      }
      if (initObj.hasOwnProperty('reg_power_b_current')) {
        this.reg_power_b_current = initObj.reg_power_b_current
      }
      else {
        this.reg_power_b_current = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_flipper_angle')) {
        this.reg_motor_flipper_angle = initObj.reg_motor_flipper_angle
      }
      else {
        this.reg_motor_flipper_angle = 0;
      }
      if (initObj.hasOwnProperty('battery_current_a')) {
        this.battery_current_a = initObj.battery_current_a
      }
      else {
        this.battery_current_a = 0;
      }
      if (initObj.hasOwnProperty('battery_current_b')) {
        this.battery_current_b = initObj.battery_current_b
      }
      else {
        this.battery_current_b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawRrOpenroverDriverMedRateData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [reg_pwr_total_current]
    bufferOffset = _serializer.int32(obj.reg_pwr_total_current, buffer, bufferOffset);
    // Serialize message field [reg_motor_fb_rpm_left]
    bufferOffset = _serializer.int32(obj.reg_motor_fb_rpm_left, buffer, bufferOffset);
    // Serialize message field [reg_motor_fb_rpm_right]
    bufferOffset = _serializer.int32(obj.reg_motor_fb_rpm_right, buffer, bufferOffset);
    // Serialize message field [reg_flipper_fb_position_pot1]
    bufferOffset = _serializer.int32(obj.reg_flipper_fb_position_pot1, buffer, bufferOffset);
    // Serialize message field [reg_flipper_fb_position_pot2]
    bufferOffset = _serializer.int32(obj.reg_flipper_fb_position_pot2, buffer, bufferOffset);
    // Serialize message field [reg_motor_fb_current_left]
    bufferOffset = _serializer.int32(obj.reg_motor_fb_current_left, buffer, bufferOffset);
    // Serialize message field [reg_motor_fb_current_right]
    bufferOffset = _serializer.int32(obj.reg_motor_fb_current_right, buffer, bufferOffset);
    // Serialize message field [reg_motor_charger_state]
    bufferOffset = _serializer.int32(obj.reg_motor_charger_state, buffer, bufferOffset);
    // Serialize message field [reg_power_a_current]
    bufferOffset = _serializer.int32(obj.reg_power_a_current, buffer, bufferOffset);
    // Serialize message field [reg_power_b_current]
    bufferOffset = _serializer.int32(obj.reg_power_b_current, buffer, bufferOffset);
    // Serialize message field [reg_motor_flipper_angle]
    bufferOffset = _serializer.int32(obj.reg_motor_flipper_angle, buffer, bufferOffset);
    // Serialize message field [battery_current_a]
    bufferOffset = _serializer.int16(obj.battery_current_a, buffer, bufferOffset);
    // Serialize message field [battery_current_b]
    bufferOffset = _serializer.int16(obj.battery_current_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawRrOpenroverDriverMedRateData
    let len;
    let data = new RawRrOpenroverDriverMedRateData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [reg_pwr_total_current]
    data.reg_pwr_total_current = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_fb_rpm_left]
    data.reg_motor_fb_rpm_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_fb_rpm_right]
    data.reg_motor_fb_rpm_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_flipper_fb_position_pot1]
    data.reg_flipper_fb_position_pot1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_flipper_fb_position_pot2]
    data.reg_flipper_fb_position_pot2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_fb_current_left]
    data.reg_motor_fb_current_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_fb_current_right]
    data.reg_motor_fb_current_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_charger_state]
    data.reg_motor_charger_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_power_a_current]
    data.reg_power_a_current = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_power_b_current]
    data.reg_power_b_current = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_flipper_angle]
    data.reg_motor_flipper_angle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [battery_current_a]
    data.battery_current_a = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [battery_current_b]
    data.battery_current_b = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rr_openrover_driver_msgs/RawRrOpenroverDriverMedRateData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d1326600b05770e80fedaabbf1fed8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 reg_pwr_total_current
    int32 reg_motor_fb_rpm_left
    int32 reg_motor_fb_rpm_right
    int32 reg_flipper_fb_position_pot1
    int32 reg_flipper_fb_position_pot2
    int32 reg_motor_fb_current_left
    int32 reg_motor_fb_current_right
    int32 reg_motor_charger_state
    int32 reg_power_a_current
    int32 reg_power_b_current
    int32 reg_motor_flipper_angle
    int16 battery_current_a
    int16 battery_current_b
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
    const resolved = new RawRrOpenroverDriverMedRateData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.reg_pwr_total_current !== undefined) {
      resolved.reg_pwr_total_current = msg.reg_pwr_total_current;
    }
    else {
      resolved.reg_pwr_total_current = 0
    }

    if (msg.reg_motor_fb_rpm_left !== undefined) {
      resolved.reg_motor_fb_rpm_left = msg.reg_motor_fb_rpm_left;
    }
    else {
      resolved.reg_motor_fb_rpm_left = 0
    }

    if (msg.reg_motor_fb_rpm_right !== undefined) {
      resolved.reg_motor_fb_rpm_right = msg.reg_motor_fb_rpm_right;
    }
    else {
      resolved.reg_motor_fb_rpm_right = 0
    }

    if (msg.reg_flipper_fb_position_pot1 !== undefined) {
      resolved.reg_flipper_fb_position_pot1 = msg.reg_flipper_fb_position_pot1;
    }
    else {
      resolved.reg_flipper_fb_position_pot1 = 0
    }

    if (msg.reg_flipper_fb_position_pot2 !== undefined) {
      resolved.reg_flipper_fb_position_pot2 = msg.reg_flipper_fb_position_pot2;
    }
    else {
      resolved.reg_flipper_fb_position_pot2 = 0
    }

    if (msg.reg_motor_fb_current_left !== undefined) {
      resolved.reg_motor_fb_current_left = msg.reg_motor_fb_current_left;
    }
    else {
      resolved.reg_motor_fb_current_left = 0
    }

    if (msg.reg_motor_fb_current_right !== undefined) {
      resolved.reg_motor_fb_current_right = msg.reg_motor_fb_current_right;
    }
    else {
      resolved.reg_motor_fb_current_right = 0
    }

    if (msg.reg_motor_charger_state !== undefined) {
      resolved.reg_motor_charger_state = msg.reg_motor_charger_state;
    }
    else {
      resolved.reg_motor_charger_state = 0
    }

    if (msg.reg_power_a_current !== undefined) {
      resolved.reg_power_a_current = msg.reg_power_a_current;
    }
    else {
      resolved.reg_power_a_current = 0
    }

    if (msg.reg_power_b_current !== undefined) {
      resolved.reg_power_b_current = msg.reg_power_b_current;
    }
    else {
      resolved.reg_power_b_current = 0
    }

    if (msg.reg_motor_flipper_angle !== undefined) {
      resolved.reg_motor_flipper_angle = msg.reg_motor_flipper_angle;
    }
    else {
      resolved.reg_motor_flipper_angle = 0
    }

    if (msg.battery_current_a !== undefined) {
      resolved.battery_current_a = msg.battery_current_a;
    }
    else {
      resolved.battery_current_a = 0
    }

    if (msg.battery_current_b !== undefined) {
      resolved.battery_current_b = msg.battery_current_b;
    }
    else {
      resolved.battery_current_b = 0
    }

    return resolved;
    }
};

module.exports = RawRrOpenroverDriverMedRateData;

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

class RawRrOpenroverDriverSlowRateData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.reg_motor_fault_flag_left = null;
      this.reg_motor_temp_left = null;
      this.reg_motor_temp_right = null;
      this.reg_power_bat_voltage_a = null;
      this.reg_power_bat_voltage_b = null;
      this.reg_robot_rel_soc_a = null;
      this.reg_robot_rel_soc_b = null;
      this.battery_mode_a = null;
      this.battery_mode_b = null;
      this.battery_temp_a = null;
      this.battery_temp_b = null;
      this.battery_voltage_a = null;
      this.battery_voltage_b = null;
      this.buildno = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('reg_motor_fault_flag_left')) {
        this.reg_motor_fault_flag_left = initObj.reg_motor_fault_flag_left
      }
      else {
        this.reg_motor_fault_flag_left = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_temp_left')) {
        this.reg_motor_temp_left = initObj.reg_motor_temp_left
      }
      else {
        this.reg_motor_temp_left = 0;
      }
      if (initObj.hasOwnProperty('reg_motor_temp_right')) {
        this.reg_motor_temp_right = initObj.reg_motor_temp_right
      }
      else {
        this.reg_motor_temp_right = 0;
      }
      if (initObj.hasOwnProperty('reg_power_bat_voltage_a')) {
        this.reg_power_bat_voltage_a = initObj.reg_power_bat_voltage_a
      }
      else {
        this.reg_power_bat_voltage_a = 0;
      }
      if (initObj.hasOwnProperty('reg_power_bat_voltage_b')) {
        this.reg_power_bat_voltage_b = initObj.reg_power_bat_voltage_b
      }
      else {
        this.reg_power_bat_voltage_b = 0;
      }
      if (initObj.hasOwnProperty('reg_robot_rel_soc_a')) {
        this.reg_robot_rel_soc_a = initObj.reg_robot_rel_soc_a
      }
      else {
        this.reg_robot_rel_soc_a = 0;
      }
      if (initObj.hasOwnProperty('reg_robot_rel_soc_b')) {
        this.reg_robot_rel_soc_b = initObj.reg_robot_rel_soc_b
      }
      else {
        this.reg_robot_rel_soc_b = 0;
      }
      if (initObj.hasOwnProperty('battery_mode_a')) {
        this.battery_mode_a = initObj.battery_mode_a
      }
      else {
        this.battery_mode_a = 0;
      }
      if (initObj.hasOwnProperty('battery_mode_b')) {
        this.battery_mode_b = initObj.battery_mode_b
      }
      else {
        this.battery_mode_b = 0;
      }
      if (initObj.hasOwnProperty('battery_temp_a')) {
        this.battery_temp_a = initObj.battery_temp_a
      }
      else {
        this.battery_temp_a = 0;
      }
      if (initObj.hasOwnProperty('battery_temp_b')) {
        this.battery_temp_b = initObj.battery_temp_b
      }
      else {
        this.battery_temp_b = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage_a')) {
        this.battery_voltage_a = initObj.battery_voltage_a
      }
      else {
        this.battery_voltage_a = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage_b')) {
        this.battery_voltage_b = initObj.battery_voltage_b
      }
      else {
        this.battery_voltage_b = 0;
      }
      if (initObj.hasOwnProperty('buildno')) {
        this.buildno = initObj.buildno
      }
      else {
        this.buildno = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawRrOpenroverDriverSlowRateData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [reg_motor_fault_flag_left]
    bufferOffset = _serializer.int32(obj.reg_motor_fault_flag_left, buffer, bufferOffset);
    // Serialize message field [reg_motor_temp_left]
    bufferOffset = _serializer.int32(obj.reg_motor_temp_left, buffer, bufferOffset);
    // Serialize message field [reg_motor_temp_right]
    bufferOffset = _serializer.int32(obj.reg_motor_temp_right, buffer, bufferOffset);
    // Serialize message field [reg_power_bat_voltage_a]
    bufferOffset = _serializer.int32(obj.reg_power_bat_voltage_a, buffer, bufferOffset);
    // Serialize message field [reg_power_bat_voltage_b]
    bufferOffset = _serializer.int32(obj.reg_power_bat_voltage_b, buffer, bufferOffset);
    // Serialize message field [reg_robot_rel_soc_a]
    bufferOffset = _serializer.int32(obj.reg_robot_rel_soc_a, buffer, bufferOffset);
    // Serialize message field [reg_robot_rel_soc_b]
    bufferOffset = _serializer.int32(obj.reg_robot_rel_soc_b, buffer, bufferOffset);
    // Serialize message field [battery_mode_a]
    bufferOffset = _serializer.uint16(obj.battery_mode_a, buffer, bufferOffset);
    // Serialize message field [battery_mode_b]
    bufferOffset = _serializer.uint16(obj.battery_mode_b, buffer, bufferOffset);
    // Serialize message field [battery_temp_a]
    bufferOffset = _serializer.uint16(obj.battery_temp_a, buffer, bufferOffset);
    // Serialize message field [battery_temp_b]
    bufferOffset = _serializer.uint16(obj.battery_temp_b, buffer, bufferOffset);
    // Serialize message field [battery_voltage_a]
    bufferOffset = _serializer.uint16(obj.battery_voltage_a, buffer, bufferOffset);
    // Serialize message field [battery_voltage_b]
    bufferOffset = _serializer.uint16(obj.battery_voltage_b, buffer, bufferOffset);
    // Serialize message field [buildno]
    bufferOffset = _serializer.int32(obj.buildno, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawRrOpenroverDriverSlowRateData
    let len;
    let data = new RawRrOpenroverDriverSlowRateData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [reg_motor_fault_flag_left]
    data.reg_motor_fault_flag_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_temp_left]
    data.reg_motor_temp_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_motor_temp_right]
    data.reg_motor_temp_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_power_bat_voltage_a]
    data.reg_power_bat_voltage_a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_power_bat_voltage_b]
    data.reg_power_bat_voltage_b = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_robot_rel_soc_a]
    data.reg_robot_rel_soc_a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_robot_rel_soc_b]
    data.reg_robot_rel_soc_b = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [battery_mode_a]
    data.battery_mode_a = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [battery_mode_b]
    data.battery_mode_b = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [battery_temp_a]
    data.battery_temp_a = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [battery_temp_b]
    data.battery_temp_b = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [battery_voltage_a]
    data.battery_voltage_a = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [battery_voltage_b]
    data.battery_voltage_b = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [buildno]
    data.buildno = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rr_openrover_driver_msgs/RawRrOpenroverDriverSlowRateData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81c26593ff4507cd00407918de2b2593';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 reg_motor_fault_flag_left
    int32 reg_motor_temp_left
    int32 reg_motor_temp_right
    int32 reg_power_bat_voltage_a
    int32 reg_power_bat_voltage_b
    int32 reg_robot_rel_soc_a
    int32 reg_robot_rel_soc_b
    uint16 battery_mode_a
    uint16 battery_mode_b
    uint16 battery_temp_a
    uint16 battery_temp_b
    uint16 battery_voltage_a
    uint16 battery_voltage_b
    int32 buildno
    
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
    const resolved = new RawRrOpenroverDriverSlowRateData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.reg_motor_fault_flag_left !== undefined) {
      resolved.reg_motor_fault_flag_left = msg.reg_motor_fault_flag_left;
    }
    else {
      resolved.reg_motor_fault_flag_left = 0
    }

    if (msg.reg_motor_temp_left !== undefined) {
      resolved.reg_motor_temp_left = msg.reg_motor_temp_left;
    }
    else {
      resolved.reg_motor_temp_left = 0
    }

    if (msg.reg_motor_temp_right !== undefined) {
      resolved.reg_motor_temp_right = msg.reg_motor_temp_right;
    }
    else {
      resolved.reg_motor_temp_right = 0
    }

    if (msg.reg_power_bat_voltage_a !== undefined) {
      resolved.reg_power_bat_voltage_a = msg.reg_power_bat_voltage_a;
    }
    else {
      resolved.reg_power_bat_voltage_a = 0
    }

    if (msg.reg_power_bat_voltage_b !== undefined) {
      resolved.reg_power_bat_voltage_b = msg.reg_power_bat_voltage_b;
    }
    else {
      resolved.reg_power_bat_voltage_b = 0
    }

    if (msg.reg_robot_rel_soc_a !== undefined) {
      resolved.reg_robot_rel_soc_a = msg.reg_robot_rel_soc_a;
    }
    else {
      resolved.reg_robot_rel_soc_a = 0
    }

    if (msg.reg_robot_rel_soc_b !== undefined) {
      resolved.reg_robot_rel_soc_b = msg.reg_robot_rel_soc_b;
    }
    else {
      resolved.reg_robot_rel_soc_b = 0
    }

    if (msg.battery_mode_a !== undefined) {
      resolved.battery_mode_a = msg.battery_mode_a;
    }
    else {
      resolved.battery_mode_a = 0
    }

    if (msg.battery_mode_b !== undefined) {
      resolved.battery_mode_b = msg.battery_mode_b;
    }
    else {
      resolved.battery_mode_b = 0
    }

    if (msg.battery_temp_a !== undefined) {
      resolved.battery_temp_a = msg.battery_temp_a;
    }
    else {
      resolved.battery_temp_a = 0
    }

    if (msg.battery_temp_b !== undefined) {
      resolved.battery_temp_b = msg.battery_temp_b;
    }
    else {
      resolved.battery_temp_b = 0
    }

    if (msg.battery_voltage_a !== undefined) {
      resolved.battery_voltage_a = msg.battery_voltage_a;
    }
    else {
      resolved.battery_voltage_a = 0
    }

    if (msg.battery_voltage_b !== undefined) {
      resolved.battery_voltage_b = msg.battery_voltage_b;
    }
    else {
      resolved.battery_voltage_b = 0
    }

    if (msg.buildno !== undefined) {
      resolved.buildno = msg.buildno;
    }
    else {
      resolved.buildno = 0
    }

    return resolved;
    }
};

module.exports = RawRrOpenroverDriverSlowRateData;

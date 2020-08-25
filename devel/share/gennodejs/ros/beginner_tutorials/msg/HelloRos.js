// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HelloRos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Ros = null;
      this.age = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('Ros')) {
        this.Ros = initObj.Ros
      }
      else {
        this.Ros = '';
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HelloRos
    // Serialize message field [Ros]
    bufferOffset = _serializer.string(obj.Ros, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.int64(obj.age, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HelloRos
    let len;
    let data = new HelloRos(null);
    // Deserialize message field [Ros]
    data.Ros = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Ros.length;
    length += object.name.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/HelloRos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a040e6b50aa4df62e27b13e9b8f055f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #ROS Mesages
    string Ros
    int64 age
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HelloRos(null);
    if (msg.Ros !== undefined) {
      resolved.Ros = msg.Ros;
    }
    else {
      resolved.Ros = ''
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

module.exports = HelloRos;

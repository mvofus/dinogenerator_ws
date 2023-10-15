// Auto-generated. Do not edit!

// (in-package dinogenerator.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GenerateDinoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_word = null;
    }
    else {
      if (initObj.hasOwnProperty('input_word')) {
        this.input_word = initObj.input_word
      }
      else {
        this.input_word = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateDinoRequest
    // Serialize message field [input_word]
    bufferOffset = _serializer.string(obj.input_word, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateDinoRequest
    let len;
    let data = new GenerateDinoRequest(null);
    // Deserialize message field [input_word]
    data.input_word = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.input_word);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dinogenerator/GenerateDinoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94764fe0a557e76ab7754bb2cc9b8c17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string input_word
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateDinoRequest(null);
    if (msg.input_word !== undefined) {
      resolved.input_word = msg.input_word;
    }
    else {
      resolved.input_word = ''
    }

    return resolved;
    }
};

class GenerateDinoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_dino_name = null;
    }
    else {
      if (initObj.hasOwnProperty('output_dino_name')) {
        this.output_dino_name = initObj.output_dino_name
      }
      else {
        this.output_dino_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateDinoResponse
    // Serialize message field [output_dino_name]
    bufferOffset = _serializer.string(obj.output_dino_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateDinoResponse
    let len;
    let data = new GenerateDinoResponse(null);
    // Deserialize message field [output_dino_name]
    data.output_dino_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.output_dino_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dinogenerator/GenerateDinoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5271d2fbe0b13e029f99697eea64afeb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string output_dino_name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateDinoResponse(null);
    if (msg.output_dino_name !== undefined) {
      resolved.output_dino_name = msg.output_dino_name;
    }
    else {
      resolved.output_dino_name = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GenerateDinoRequest,
  Response: GenerateDinoResponse,
  md5sum() { return '05f0b075fa1cdfa5ea65f04d56a877bc'; },
  datatype() { return 'dinogenerator/GenerateDino'; }
};

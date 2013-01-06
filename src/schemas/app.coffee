module.exports =
  id: "app"
  type: "object"
  properties:
    id:
      type: "string"
    name:
      type: "string"
    description:
      type: "string"
    link:
      type: "string"
      format: "uri"
    picture:
      type: "string"
      format: "uri"
    published:
      type: "boolean"
    tags:
      type: "array"
      items:
        type: "string"
    developers:
      type: "array"
      items:
        $ref: "user#/properties/id"
    apiKeys:
      type: "array"
      items:
        $ref: "api/key#/properties/id"

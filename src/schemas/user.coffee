module.exports =
  id: "user"
  type: "object"
  properties:
    id:
      type: "string"
    name:
      type: "string"
    email:
      type: "string"
      format: "email"
    apps:
      type: "array"
      items:
        $ref: "app#/properties/id"

module.exports =
  id: "api"
  type: "object"
  properties:
    id:
      type: "string"
    name:
      type: "string"
    docs:
      type: "string"
      format: "uri"
    keys:
      type: "array"
      items:
        id: "api/key"
        type: "object"
        properties:
          id:
            type: "string"
          api:
            # this ref is local to the whole api schema
            $ref: "#/properties/id"

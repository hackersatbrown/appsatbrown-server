W = require "when"

store =
  # Takes a JSON schema and produces an interface to a collection of objects in
  # the store that satisfy the schema.
  collection: (schema) ->

    # Adds an id to props and adds the item to the collection
    create: (props) -> # Promise newItem
      W.reject "Not implemented"

    # Retrieves the item with the given id
    read: (id) -> # Promise item
      W.reject "Not implemented"

    # Retrieves all the item in the collection
    # TODO: We'll probably want to add a query parameter to filter these
    readAll: () -> # Promise items
      W.reject "Not implemented"

    # Updates the item specified by id with the new props
    update: (id, props) -> # Promise true
      W.reject "Not implemented"

    # Alternatively, you could have an updater function
    # updateFun: (oldItem, done) -> Promise true
    update: (id, updateFun) -> # Promise true
      W.reject "Not implemented"

    # Deletes the item with the id from the collection
    delete: (id) -> # Promise true
      W.reject "Not implemented"

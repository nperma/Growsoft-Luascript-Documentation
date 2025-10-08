
# HTTP & JSON Utilities

## HTTP Requests

> ⚠️ **NOTE:** All HTTP requests must be performed inside a coroutine to avoid blocking the server.

```lua
http.get(url, headers)
````

Performs an HTTP GET request to the specified `url`.
`headers` is an optional table of HTTP headers. Returns the response body and status.

---

```lua
http.post(url, headers, postData)
```

Performs an HTTP POST request to the specified `url`.
`headers` is an optional table of HTTP headers.
`postData` is the string or table of data to send in the body of the request. Returns the response body and status.

---

## JSON Utilities

```lua
json.encode(dataTable)
```

Encodes a Lua table into a JSON string.

---

```lua
json.decode(jsonString)
```

Decodes a JSON string into a Lua table. Returns `nil` if the JSON is invalid.

---

[Back](../README.md)


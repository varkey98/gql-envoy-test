For running the setup, you can use the bundled docker compose setup. It'll start up envoy on port 8080 which forwards the request to the gql server and authorizes incoming request using ext_proc filter. 
The ext_proc server is assumed to be on port 5441. 

Graphql webclient is available on `http://localhost:8080/`.
The websocket address is: `ws://localhost:8080/query`

```
subscription {
  messageAdded {
    id
    text
    user
  }
}

```

```
mutation {
  postMessage(user: "alive", text: "Hello from Altair!") {
    id
    text
    user
  }
}
```

```
query {
  messages {
    id
    text
    user
  }
}
```

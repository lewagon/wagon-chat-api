## Wagon-Chat API documentation

An API (Application Programming Interface) is just like a web-site that communicates raw data (like JSON) instead of well structured and designed data (like HTML/CSS). You can see an API as the poor-version of a standard website meant to be used by computers, not by human beings.

- An API is designed for communication between machines
- A standard website has a nicer human-readable interface as it's designed for humans (you can see a website as a **"AHI"** (Application Human Interface).

APIs are everywhere and proposed by all serious services. Here you'll read your first API documentation on a very simple example, the wagon-chat API!

### `GET /:promo_id/comments`

Will get you the JSON file of all comments of a Wagon's prom. E.g:

```json
[
  {
    "id":1,
    "author":"Boris",
    "content":"Salut",
    "promo_id":1,
    "created_at":"2014-11-06T14:23:26.104Z",
    "updated_at":"2014-11-06T14:23:26.104Z"
  },
  {
    "id":2,
    "author":"Seb",
    "content":"Yo",
    "promo_id":1,
    "created_at":"2014-11-06T14:23:49.323Z",
    "updated_at":"2014-11-06T14:23:49.323Z"
  }
]

### `POST /:promo_id/comments`

Will
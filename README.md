## Wagon-Chat API documentation

An API (Application Programming Interface) is just like a web-site that communicates raw data (like JSON) instead of well structured and designed data (like HTML/CSS). You can see an API as the poor-version of a standard website meant to be used by computers, not by human beings.

- An API is designed for communication between machines
- A standard website has a nicer human-readable interface as it's designed for humans. You can see a website as a **"AHI"** (Application Human Interface).

APIs are everywhere and proposed by all serious services. Here you'll read your first API documentation on a very simple example, the wagon-chat API!

#### Base URL

The base URL of the API is `https://wagon-chat.herokuapp.com/`. Feel free to test the API using [Postman](https://www.getpostman.com/) or in the JS console directly.

#### Get messages `GET '/:channel/messages'`

Will get you the JSON file of all messages for the batch `:channel`. E.g:

```json
{
  "channel": "general",
  "messages": [
    {
      "id": 1,
      "author": "Boris",
      "content": "Salut",
      "channel": "general",
      "created_at": "2014-11-06T14:23:26.104Z",
      "updated_at": "2014-11-06T14:23:26.104Z"
    },
    {
      "id": 2,
      "author": "Seb",
      "content": "Yo",
      "channel": "general",
      "created_at": "2014-11-06T14:23:49.323Z",
      "updated_at": "2014-11-06T14:23:49.323Z"
    }
  ]
}
```

#### Post a comment `POST '/:channel/messages'`

Will post a new comment on our API's database for the promo `:channel`.
In the request body, you have to send the details of the post, in the following JSON format:

```json
{
  "author": "Seb",
  "content": "Yo Yo Yo"
}
```

The API will respond with the full details of the comment you've posted (in JSON format), e.g:

```json
{
  "id": 8,
  "author": "Seb",
  "content": "Yo Yo Yo",
  "channel": "general",
  "created_at": "2014-11-06T14:23:49.323Z",
  "updated_at": "2014-11-06T14:23:49.323Z"
}
```

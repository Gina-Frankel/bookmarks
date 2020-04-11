# Specifications

- Show a list of bookmarks
-  Add new bookmarks
- Delete bookmarks
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users are restricted to manage only - their own bookmarks


[![](https://mermaid.ink/img/eyJjb2RlIjoiY2xhc3NEaWFncmFtXG5cbmNsYXNzIEJvb2ttYXJrTWFuYWdlciB7XG4gICtjdXJyZW50X2Jvb2ttYXJrc1xuICArc2hvd19ib29rbWFya3MoKVxufSIsIm1lcm1haWQiOnsidGhlbWUiOiJkZWZhdWx0In0sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiY2xhc3NEaWFncmFtXG5cbmNsYXNzIEJvb2ttYXJrTWFuYWdlciB7XG4gICtjdXJyZW50X2Jvb2ttYXJrc1xuICArc2hvd19ib29rbWFya3MoKVxufSIsIm1lcm1haWQiOnsidGhlbWUiOiJkZWZhdWx0In0sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)

The above is based on the following user story:

 "As a user,

So that I can access my bookmarks, 

I'd like to seea list of my bookmarks"

table specification: 
with two columns: id, a SERIAL PRIMARY KEY, and url, a VARCHAR with a maximum length of 60


# User story - Add new bookmarks

```
As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager
```



# Database setup 

1. First connect to your pool of databases by typing:
```
   $ psql 
 ```

   This should give you a command prompt similar to this :

```
    psql (9.3.5)
    Type "help" for help

    admin=#
```
To look at existing databases type:
```
$   \l
```
  2. Then connect to a database by  using psql's \c command:

```
  admin=# \c bookmark_manager;
```

4. Creating a bookmarks table 

```
bookmark_manager=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60)); ```



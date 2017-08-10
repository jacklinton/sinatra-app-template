# REST-ful ROUTES

ACTION -  ROUTE                  - METHOD
---
INDEX  -  GET  '/posts'          - Post.all

SHOW   -  GET  '/posts/:id'      - Post.find_by_id(params[:id])

NEW    -  GET  '/posts/new'      - N/A

CREATE -  POST '/posts'          - Post.create(params)

EDIT   -  GET  '/posts/:id/edit' - Post.find_by_id(params[:id])

UPDATE -  PUT '/posts/:id'       - post.update(params)

DESTROY - DELETE '/posts/:id'    - post.destroy

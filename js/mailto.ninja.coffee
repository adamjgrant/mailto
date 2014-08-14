---
---
document.addEventListener 'DOMContentLoaded', ->
  $$ = (el) ->
    document.querySelectorAll el

  $ = (el) ->
    $$(el)[0]

  console.log $('.se-modal')

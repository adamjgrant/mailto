---
---
document.addEventListener 'DOMContentLoaded', ->

  # Mobile Menu Navigation
  menuLink = (document.querySelectorAll('.menu-link'))[0]
  disclosedMenuItems = Array.prototype.slice.call document.querySelectorAll('.disclosed')
  toggleMenu = () ->
    disclosedMenuItems.forEach (item, i) ->
      item.classList.toggle('show')

  menuLink.addEventListener('mousedown', toggleMenu)

  # BuddySystem 
  window.buddySystem = (objs) ->
    for o in objs
      s = String o.innerHTML;(o.innerHTML = s.replace((new RegExp '((?:[^ ]* ){' + ((s.match(/\s/g) || 0).length - 1) + '}[^ ]*) '),"$1&nbsp;")) if s

  headings = document.querySelectorAll('h1')
  paragraphs = document.querySelectorAll('p')
  buddySystem headings
  buddySystem paragraphs

  # High Res Images
  HDimgs = document.querySelectorAll '[srcset]'
  Images = new Object()
  (
    Images[_i] = new Image()
    Images[_i].src = img.srcset.split(' ')[0]
    Images[_i].obj = img
    Images[_i].onload = ->
      console.info "Image loaded: #{this.src}"
      this.obj.src = this.src
      this.obj.style.width = "#{this.width / 2}px"
      this.obj.removeAttribute 'srcset'
    Images[_i].onerror = ->
      console.error "Could not load image #{Images[_i].src}"
  ) for img in HDimgs

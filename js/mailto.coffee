---
---

links = document.querySelectorAll 'a[href^="mailto"]'
(
  link.dataset.oldhref = link.href
) for link in links

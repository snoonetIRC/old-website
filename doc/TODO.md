# TODO

## General

* Move Markdown renderer config from `config/initializers/markdown_renderer.rb` to `config/markdown.yml`
  * See: https://github.com/vmg/redcarpet#darling-i-packed-you-a-couple-renderers-for-lunch
* Capistrano
  * Staging server: dev.snoonet.org
  * Production server: snoonet.org

## Staff login screen

* Inform that user is automatically logged out after 30 minutes
* Inform that user will be locked out either for 1 hour or until they unlock via email after 20 failed password attempts
* Inform that user will have 6 hours to reset their password

## Libraries

* https://github.com/plataformatec/devise
  * Create Staff model
* https://github.com/drapergem/draper
* https://github.com/norman/friendly_id

## Pages

* Parse and normalize `params[:permalink]` in controller
* Ensure case insensitivity
* Ensure a specific word delimiter in permalinks: `-`, `_`, `(space)`
* * Redirect matching permalinks with incorrect word delimiters to the correct permalink
* Editor https://simplemde.com
  * Customize Redcarpet renderer options to work smoothly with SimpleMDE
* History? PageHistoryItem?
* `title` field
  * Optional, nullable
* `display_title` field
  * Optional, not nullable, defaults to `true`
* `hidden` field
  * Hides the page from sitemap, and is accessible by any user
  * Optional, not nullable, defaults to `false`
* `private` field
  * Hides the page from sitemap, and is accessible only by staff members
  * Optional, not nullable, defaults to `false`
* `Page#summary(max)` to show summary in /sitemap
* `#edit` route is being overwritten by `#read` route

## Developer documentation

* Add all references, added libraries, documentation
* Tips and such

## Tests

* Error pages
* `Page` model, routes, controller, and integration

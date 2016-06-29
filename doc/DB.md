# Database

## Pages

### Fields

* `name` *Required*  
  * Page name.
* `permalink`  
  * URL path to this page, relative to the root path.
  * Generated from `name`, if not given.
* `content_markdown` *Required*
  * Content of the page in Markdown format, set by a WYSIWYG Markdown editor.
* `content_html`
  * Content of the page in HTML format.
  * Generated from `content_markdown`, never set directly.
    * The renderer is defined in `config/initializers/markdown_renderer.rb`.
* `content_checksum`
  * MD5 hash of `content_markdown`, updated when `content_markdown` is updated.
  * The MD5 hash of `content_markdown` is checked on save to determine if `content_html` should be regenerated.

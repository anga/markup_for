# Markup for

Markup for is a simple gem for use a markup language in a column.

## Usage

For example, for use textile in the column body, only you need:

<code>markup_for :body, :textile</code>

Now for get the the html result:

<code>@post.body_html</code>

## Supported formats

* :creole
* :markup
* :mediawiki
* :org
* :rdoc
* :textile

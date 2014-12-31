#Example of PostgreSQL's Array Feature in Rails

It includes only one model: Group, which has a `tags` field

`tags` field is declared as: `t.text "tags", default: [], array: true`

The input field accepts multiple tags separated by newline.

It removes duplicate tags when saving to database.

## Remove Curly Brace

By default, Rails shows curly braces `{}` in the text input field of the form. 

Check [Group#formated](app/models/group.rb) method and [_form.html.erb](app/views/groups/_form.html.erb) for the changes I made.

## Issue

This example only works with Rails `4.2.0.rc1`, but fails on `4.2.0`

## Testing

The [testing code](spec/controllers/groups_controller_spec.rb) indicate that with Rails `4.2.0`, the array could not create.
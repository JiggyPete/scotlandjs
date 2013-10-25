require 'haml'
require 'redcarpet'

ignore /Gemfile*/
ignore /README.md/
ignore /\/\..*/

layout 'layouts/default.html.haml'

before 'index.html.haml' do
  @title = "Scotland JS"
end

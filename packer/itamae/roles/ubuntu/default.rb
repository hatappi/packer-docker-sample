package 'sudo'
package 'wget'
package 'libsqlite3-dev'
include_recipe File.expand_path('../../cookbooks/rbenv', File.expand_path(File.dirname(__FILE__)))
include_recipe File.expand_path('../../cookbooks/rails', File.expand_path(File.dirname(__FILE__)))

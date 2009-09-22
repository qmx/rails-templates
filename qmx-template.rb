# cleanups
run "rm public/index.html"

# git setup
run "touch log/.gitignore"
run "touch tmp/.gitignore"
run "touch vendor/.gitignore"

file ".gitignore", <<-CODE
log/*.log
tmp/**/*
db/*.sqlite3
*.swp
CODE

git :init
git :add => "."
git :commit => "-a -m 'Initial commit'"

# cucumber / rspec
generate :cucumber
git :add => "."
git :commit => "-a -m 'Added cucumber'"

generate :rspec
git :add => "."
git :commit => "-a -m 'Added rspec'"





printf "\n gem 'coffee-script-source', '1.8.0'" >> Gemfile
bundle update
printf "\ndatabase.yml" >> .gitignore
printf "\ndoc/" >> .gitignore
printf "\n*.swp" >> .gitignore
printf "\n*~" >> .gitignore
printf "\n.project" >> .gitignore
printf "\n.DS_Store" >> .gitignore
printf "\n.idea" >> .gitignore
printf "\n.secret" >> .gitignore
printf "\n/log/*.log" >> .gitignore
printf "\n/tmp" >> .gitignore
printf "\n/.bundle" >> .gitignore
git init
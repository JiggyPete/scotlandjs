task :deploy do
  puts "## Deploying to GitHub Pages"

  system "jekyll build"
  system "cp -rf _site ../scotlandjs-deploy"
  system "git checkout gh-pages"
  system "rm -rf *"
  cp_r "../scotlandjs-deploy/.", "."
  system "git add -A"

  message = "Site updated at #{Time.now.utc}"
  puts "## Committing: #{message}"
  system "git commit -m \"#{message}\""

  puts "## Pushing to GitHub"
  system "git push origin gh-pages"

  system "rm -rf ../scotlandjs-deploy"

  puts "## Deploy complete"
end

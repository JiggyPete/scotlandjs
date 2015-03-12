def output(speaker)
  <<-HTML
  &nbsp;
  <div class="speaker-info">
    <p>#{speaker['name']}</p>
    <p>#{speaker['title']}</p>
    <div class="video">
      <div class="container">
        <iframe src="//player.vimeo.com/video/70637558?portrait:0" frameborder="0" webkitallowfullscreen="webkitallowfullscreen" mozallowfullscreen="mozallowfullscreen" allowfullscreen="allowfullscreen"></iframe>
      </div>
    </div>
  </div>
  HTML
end

require 'yaml'
yml = YAML::load File.open('_data/speakers.yml')
speakers = []
yml.each do |speaker|
  speakers << speaker
end

speakers.sort_by!{|s| s['name']}

speakers.each do |speaker|
  puts output(speaker)
end


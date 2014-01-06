def row(name, twitter, pic, bio)
  puts <<-HTML
    <tr>
      <td><strong>#{name}</strong><br/><a href="http://twitter.com/#{twitter}" target="_blank">#{twitter}</a></td>
      <td><img src="images/#{pic}" width='70px' height='70px'/></td>
      <td>
        #{bio}
      </td>
    </tr>
HTML
end



row('Ryan Sandor Richards (Ryan)', '@rsandor', 'speakers/change.me', "I'm a full stack engineer with love of javascript and all things recursive. My current position is at Fastly, a next generation CDN, where I focus on the configuration front-end, real-time visualizations, and general historical statistics shenanigans.")
row('Anton Whalley', 'antonwhalley', 'speakers/antonwhalley.jpg', 'VP Engineering at Nearform. Love talking about node.js Hardware hacking and websockets')
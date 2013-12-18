require 'haml'
require 'redcarpet'
require 'sass'

ignore /Gemfile*/
ignore /README.md/
ignore /\/(\.|\_).*/

layout 'layouts/default.html.haml'

before 'index.html.haml' do
  @title = "Scotland JS"
  @sponsors = [
    {
      name: 'Neo',
      image: 'neo.png',
      url: 'http://neo.com'
    }
  ]
  @speakers = [
    {
      name: 'Mark Boas',
      image: 'mark.jpg',
      twitter: '@maboa',
      title: 'Hyperaudio - Making Audio a First Class Citizen of the Web'
    },
    {
      name: 'David Bruant',
      image: 'david.jpg',
      twitter: '@DavidBruant',
      title: 'Asynchronous patterns'
    },
    {
      name: 'Jason Frame',
      image: 'jason.jpg',
      twitter: '@jaz303',
      title: 'Livecoding in JS'
    },
    {
      name: 'Colin Gemmell',
      image: 'colin.jpg',
      twitter: '@colin_gemmell',
      title: 'Automating with Grunt.js'
    },
    {
      name: 'Sebastian Golasch',
      image: 'sebastian.jpg',
      twitter: '@asciidisco',
      title: 'The browser, the programmer and the Dalek'
    },
    {
      name: 'Bernard Kobos',
      image: 'bernard.jpg',
      twitter: '@bkobos',
      title: 'Automated Cross-browser testing with Node'
    },
    {
      name: 'Gregor Martynus',
      image: 'gregor.jpg',
      twitter: '@gr2m',
      title: 'Look ma - no backend!'
    },
    {
      name: 'Ole Michaelis',
      image: 'ole.jpg',
      twitter: '@CodeStars',
      title: 'Automated deployments with robots'
    },
    {
      name: 'Damian Nicolson',
      image: 'damian.jpg',
      twitter: '@damian',
      title: 'Writing (testable | maintainable | scalable | rock solid) JavaScript'
    },
    {
      name: 'Boydlee Pollentine',
      image: 'boydlee.jpg',
      twitter: '@boydleep',
      title: 'REST Easy with Deployd (Rapid API creation)'
    },
    {
      name: 'Ryan Richards',
      image: 'ryan.jpg',
      twitter: '@rsandor',
      title: 'Front-to-back: Architecting your data reporting and visualization stack'
    },
    {
      name: 'Phil Roberts',
      image: 'phil.jpg',
      twitter: '@philip_roberts',
      title: 'Enemy of the state: An introduction to Functional Reactive Programming and Bacon.js'
    },
    {
      name: 'Dominic Tarr',
      image: 'dominic.jpg',
      twitter: '@dominictarr',
      title: 'The database of the future: leveldb'
    },
    {
      name: 'Hassy Veldstra',
      image: 'hassy.jpg',
      twitter: '@hhv1',
      title: 'Anatomy of a million user real-time node.js application'
    },
    {
      name: 'Huong Vu',
      image: 'huong.jpg',
      twitter: '@hungryzi',
      title: 'Embracing IndexedDB'
    },
    {
      name: 'Anton Whalley',
      image: 'anton.jpg',
      twitter: '@antonwhalley',
      title: 'Realtime replication in the realworld with node.js'
    }
  ]
end

before 'news.html.haml' do
  @title = 'News'
end

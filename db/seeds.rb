# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#  CREATE SEED FOR TOPIC
3.times do |topic|
  Topic.create!(
      title: "Topic #{topic}"
    )
end
puts '3 topics created'

#  CREATE SEED FOR BLOG
10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    topic_id: Topic.last.id
  )
end

puts '10 blogs created'

#  CREATE SEED FOR SKILLS
5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts '5 skills created'

#  CREATE SEED FOR PORTFOLIO
8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title #{portfolio}",
    subtitle: 'Ruby on rails',
    body: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout' ,
    main_image: "http://placehold.it/600x400" ,
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title #{portfolio}",
    subtitle: 'Angular',
    body: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout' ,
    main_image: "http://placehold.it/600x400" ,
    thumb_image: "http://placehold.it/350x200"
  )
end

puts '9 portfolios created'

3.times do |techno|
  Portfolio.last.technologies.create!(
    name: "Technology #{techno}"
  )
end

puts '3 technologies created'

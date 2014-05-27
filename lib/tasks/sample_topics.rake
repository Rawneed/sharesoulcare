namespace :db do
  desc "Fill db with sample data"
  task populate: :environment do
    Topic.create!(image:          "soulcare.jpg",
   		  title:          "There's land to posses",
                  date:           Date.today,
                #  bible_passage = Faker::Lorem.sentence(3),
		#  introduction  = Faker::Lorem.paragraph(2),
      		#  highlight     = Faker::Lorem.paragraph(1),
      		#  discussion    = Faker::Lorem.paragraph(3),
      		#  conclusion    = Faker::Lorem.paragraph(1),
      		#  action_steps  = Faker::Lorem.sentence(2),
      		#  prayer        = Faker::Lorem.sentence(4))
)
      100.times do # |n|
        image         = "soulcare.jpg"
        title         = "There's land to posses" #Faker::Lorem.words(8)
        date          = Date.today
        bible_passage = Faker::Lorem.sentence(3)
        introduction  = Faker::Lorem.paragraph(2)
        highlight     = Faker::Lorem.paragraph(1)
        discussion    = Faker::Lorem.paragraph(3)
        conclusion    = Faker::Lorem.paragraph(1)
        action_steps  = Faker::Lorem.sentence(2)
        prayer        = Faker::Lorem.sentence(4)
        Topic.create!(image: image, 
                      title: title,
                      date: date, # bible_passage: bible_passage, introduction: introduction, highlight: highlight, discussion: discussion, conclusion: conclusion, action_steps: action_steps, prayer: prayer
)

  50.times do 
    title = "MercyMe Concert"
    location = "Verizon Center, Baltimore, MD"
    date = Date.today
    time = Time.now
    cost = "Free"
    Event.create!(title: title, location: location, date: date, time: time,
    cost: cost)
  end
  end 
  end  
end

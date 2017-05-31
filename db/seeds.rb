# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


user1 = User.create(first_name: "Alex", last_name: "Xela", username: "alex", email: "alex@laboratory_retrievers.edu", password: "password")
user1.experiment_proposal = Experiment_Proposal.create(title: "Best Candy", summary: "We need to test all the candy in the store to find the best one.", hypothesis: "All candy is good.")
user1.experiment = Experiment.create(experiment_proposal_id: 1, result: "Unknown Results", conclusion: "All candy is good.")

10.times do
  User.create(first_name: Faker::Internet.user_name, last_name: Faker::Hipster.word, username: Faker::HarryPotter.character, email: Faker::Internet.email, password: "password")
end

10.tmes do
  Experiment_Proposal.create(title: Faker::HarryPotter.quote, summary: Faker::Hipster.sentence, hypothesis: Faker::Hipster.paragraph)
end

10.times do
  x = Experiment.create(experiment_proposal_id: 1, user_id: 1, result: Faker::Hacker.verb, conclusion: "The conclusion is unknown at this time.")
  x.comment = Comment.create(body: Faker::Hipster.sentence, user_id: 1)
end

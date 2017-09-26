namespace :comments do
  desc "Destroy messages for a given batch"
  task destroy: :environment do
    puts "Which channel?"
    channel = STDIN.gets.chomp
    count = Comment.where(channel: channel).count
    Comment.where(channel: channel).destroy_all
    puts "Destroyed #{count} chat messages form batch ##{channel}"
  end

  desc "Destroy all messages"
  task destroy_all: :environment do
    Comment.destroy_all
  end
end

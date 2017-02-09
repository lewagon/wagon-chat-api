namespace :comments do
  desc "Destroy messages for a given batch"
  task destroy: :environment do
    puts "Which batch id?"
    promo_id = STDIN.gets.chomp
    count = Comment.where(promo_id: promo_id).count
    Comment.where(promo_id: promo_id).destroy_all
    puts "Destroyed #{count} chat messages form batch ##{promo_id}"
  end
end

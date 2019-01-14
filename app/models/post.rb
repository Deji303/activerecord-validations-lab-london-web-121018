
class ClickbaitValidator < ActiveModel::EachValidator
  def validate_each(post,attribute,value)

    unless post.title.include?("Won't") ||post.title.include?("Believe") || post.title.include?("Secret") || post.title.include?("Guess") || post.title.include?("Top")
      post.errors[:title] << "Not clickbaity enough!"

      # binding.pry
    end unless post.title == nil
  end
end








class Post < ActiveRecord::Base
  validates :title, presence: true, clickbait: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}




  # def validate(title)
  #   number = (1..10)
  #   phrase1 = "Won't Believe"
  #   phrase2 = "Secret"
  #   phrase3 = "Guess"
  #   phrase4 = "Top #{number}"
  #
  #
  #
  #   binding.pry
  #   p 'eof'
  # end
end

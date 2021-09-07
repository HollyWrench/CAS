class FeedItem < ApplicationRecord
  has_one_attached :photo
  acts_as_favoritable

  def flip
    $('.flip-card').click(function(event) {
      $(this).find('.flip-card-inner').toggleClass('fliped')
    });
  end
end

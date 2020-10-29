class Micropost < ApplicationRecord
  belongs_to :user
  # お気に入り機能追加
  has_many :favorites
  has_many :users, through: :favorites
 # has_many :likes, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  # お気に入りメソッド
  #def like(micropost)
    #favorites.find_or_create_by(micropost_id: micropost.id)
  #end
  
  #def unlike(micropost)
    #favorites.find_by(micropost_id: micropost.id)
    #favorite.destroy if favorite
  #end  
  
  #def like?(micropost)
    #likes.include?(micropost)
  #end  
end


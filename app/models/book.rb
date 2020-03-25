class Book < ApplicationRecord

  # 投稿時のバリデーション
  validates :title, presence: true, length: { maximum: 18 }
  validates :author, presence: true, length: { maximum: 20 }
  validates :text, presence: true, length: { maximum: 300}

end

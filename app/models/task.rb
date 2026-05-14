class Task < ApplicationRecord
  # バリデーション
  validates :title, presence: true, length: { maximum: 100 }
  validates :priority, inclusion: { in: [1, 2, 3] }
  validates :done, inclusion: { in: [true, false] }

  # 優先度を文字列で返すメソッド
  PRIORITY_LABELS = { 1 => "低", 2 => "中", 3 => "高" }.freeze

  def priority_label
    PRIORITY_LABELS[priority]
  end
end
class StockList < ApplicationRecord
  belongs_to :Wallet_account
  has_and_belongs_to_many :instruments

  validates :name, uniqueness: { scope: [:Wallet_account, :group]}

  def cryptocurrency_list?
    crypto_group.present?
  end

  def crypto_group
    $1 if group =~ /crypto_watchlist_(.+)/
  end
end

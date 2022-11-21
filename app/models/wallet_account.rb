class WalletAccount < ApplicationRecord
  belongs_to :Wallet_user
  has_many :stock_lists

  def url
    'https://api.Wallet.com/accounts/' + account_number + '/'
  end
end

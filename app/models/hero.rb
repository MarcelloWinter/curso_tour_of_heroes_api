class Hero < ApplicationRecord
  validates :name, presence: true

  #criando um método para usar no controller. Para que o controller só tenha acesso a esse escopo.
  scope :sorted_by_name, -> {order(:name)}
end

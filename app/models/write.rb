class Write < ApplicationRecord
    validates :item,{presence: true,length:{maximum:40}}
end

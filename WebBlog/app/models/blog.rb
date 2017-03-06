class Blog < ApplicationRecord
  extend FriendlyId

  before_validation :reference, on: :create
  friendly_id :slug_candidates, use: :slugged

  validates :title, :text, presence: true
  validates :title,  length: { maximum: 30, minimum: 3 }
  validates :text,  length: { maximum: 1500 }

   hash_eng = { а: "a", б: "b", в:"v", г:"g", д:"d", е:"e", ё:"e", ж:"zh", з:"z",
  и:"i", й:"i", к:"k", л:"l", м:"m", н:"n", о:"o", п:"p", р:"r", с:"s", т:"t", у:"u", ф:"f", х:"h",
  ц:"c", ч:"ch", ш:"sh", щ:"sh", ъ:"", ы:"i", ь:"", э:"e", ю:"you", я:"ya",
  А:"A", Б:"B", В:"V", Г:"G", Д:"D", Е:"E", Ё:"E", Ж:"Zh", З:"Z", И:"I", Й:"I", К:"K", Л:"L", М:"M", Н:"N", О:"O", П:"P", Р:"R", С:"S", Т:"T", У:"U",
  Ф:"F", Х:"H", Ц:"C", Ч:"Ch", Ш:"Sh", Щ:"Sh", Ъ:"", Ы:"I", Ь:"", Э:"E", Ю:"You", Я: "Ya" }

   def reference
      SecureRandom.hex(1).upcase
   end

   private

   def slug_candidates
      [
        [Translit.convert(title, :english), :reference]
      ]
   end

end

class Record < ActiveRecord::Base
  before_save :set_valor

  scope :total, lambda { sum(:valor)}

  KILOMETRAGEM = 0.72

  private
    def set_valor
      self.valor = self.total_km * KILOMETRAGEM
    end
end

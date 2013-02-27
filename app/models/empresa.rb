class Empresa < Lugar
   
  field :pais, type: String
  field :descricao, type: String
  field :site, type: String
  field :validada, type: Boolean, default: false

  has_one :admin_empresa
end

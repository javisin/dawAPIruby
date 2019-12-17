class UserSerializer < ActiveModel::Serializer
  attributes :username, :kind, :email, :password, :name, :surname, :postalcode, :country, :phone

end
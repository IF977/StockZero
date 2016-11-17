class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 6, message: 'Deve ter pelo menos 6 caracteres' }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, length: { minimum: 6, message: 'Deve ter pelo menos 6 caracteres' }, if: -> { new_record? || changes[:crypted_password] }
  before_save { self.email = email.downcase }
  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create, message:"inválido deve ter '@', caracteres minúsculos e se faz necessário a presença do '.com'"}, uniqueness: {case_sensitive: false}
  validates :email, uniqueness: true
  validates_presence_of :email, message: 'Não pode ser deixado em branco'
  validates_presence_of :password, message: 'Não pode ser deixado em branco'
  validates_presence_of :password_confirmation, message: 'Não pode ser deixado em branco'
end
class AddUserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    loop do
      @user = User.new()
      @user.nome = ['Henrique', 'Felipe', 'Tiago'].sample
      @user.email = ['henrique@teste.com', 'felipe@teste.com', 'tiago@teste.com'].sample
      @user.idade = rand(0..99)
      @user.avatar = nil
      @user.tempo = Time.now

      if @user.save
        puts `usário criado: (#{@user.nome}, #{@user.email }, #{@user.idade}, #{@user.avatar}, #{@user.tempo}).`
      else
        puts `não de certo!`
      end

      sleep 3
    end
  end
end

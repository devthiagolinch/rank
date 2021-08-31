namespace :dev do

  DEFAULT_PASSWORD = "123456"
  
  desc "TODO"
  task setup: :environment do
    show_spinner("Apagando BD...") { %x(rails db:drop) }
    show_spinner("Criando BD...") { %x(rails db:create) }
    show_spinner("Migrando BD...") { %x(rails db:migrate) }
    show_spinner("Cadastrando o administrador") { %x(rails dev:add_admin) }
    show_spinner("Cadastrando o modelo padrão") { %x(rails dev:add_model) }
  end

  desc "TODO"
  task add_admin: :environment do
    Admin.create!(
      email: 'admin@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc "TODO"
  task add_model: :environment do
    Model.create!(
      email: 'user@user.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  private

    def show_spinner(msg_start, msg_end = "Concluído!")
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      spinner.auto_spin
      yield
      spinner.success("(#{msg_end})")    
    end

end

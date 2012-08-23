require "rspec/core/rake_task"
RSpec::Core::RakeTask.new do |t|
    # Define o nome da tarefa.
    t.name = :spec
    
    # Define o padrão que será usado para encontrar
    # os arquivos de exemplos. No exemplo abaixo,
    # apenas arquivos com a extensão `.spec.rb` serão
    # executados.
    t.pattern = "spec/**/*.spec.rb"

    # Define se o Bundler será usado para executar o RSpec.
    # O RSpec será executado com o comando `bundle exec`
    # caso um arquivo `Gemfile` exista.
#    t.skip_bundler = false
    
    # Define qual arquivo Gemfile deve ser usado.
#    t.gemfile = File.expand_path("~/Gemfile")
    
    # Ativa o modo verboso de execução.
    t.verbose = true
    
    # Gera o relatório de cobertura de código com RCov.
    t.rcov = false
    
    # Define o caminho para o executável do RCov.
    t.rcov_path = "/usr/local/bin/rcov"
    
    # Define as opções que o RSpec irá passar para o RCov.
    t.rcov_opts = "--exclude 'spec/some_dir'"
    
    # Define o modo como o Ruby será executado. Recebe os mesmos
    # argumentos do executável `ruby`.
    # No exemplo abaixo, iremos executar o Ruby com a opção `warnings`.
    t.ruby_opts = "-w"
    
    # Define as opções do RSpec. Recebe os mesmos argumentos do
    # executável `rspec`.
    t.rspec_opts = ["--color"]
end
    


# lib/tasks/example.rb
set :output, 'log/cron.log'
# ジョブの実行環境の指定
set :environment, :production

task example: :environment do
  Rails.logger.info "example: #{Time.current}"
end

# app/models/sample.rb
class Sample
  def self.test
    Rails.logger.warn "test: #{Time.current}"
  end
end

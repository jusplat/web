
# everyの引数に、時間と実行させたいtaskの内容を書いたブロックを渡す
every 1.minutes do
  # job_type :rake,    "cd :path && :environment_variable=:environment bundle exec rake :task --silent :output"
  rake "example" # lib/tasksあたりに置いているタスクだよ
end

every 1.minutes do
  # job_type :runner,  "cd :path && bin/rails runner -e :environment ':task' :output"
  runner "Sample.test" # モデルに書いたメソッドだよ
end

# Learn more: http://github.com/javan/whenever

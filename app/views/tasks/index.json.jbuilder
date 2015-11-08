json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :duration, :idate, :fdate, :user_id, :finished
  json.url task_url(task, format: :json)
end

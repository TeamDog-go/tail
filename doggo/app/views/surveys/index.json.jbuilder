json.surveys @surveys do |survey|
  json.id survey.id
  json.user_id survey.user_id
  json.questions survey.questions
  json.answers survey.questions do |question|
    json.merge! question.answers
  end
  json.result survey.result
end
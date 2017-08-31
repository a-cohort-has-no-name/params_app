Rails.application.routes.draw do
  get "/query_params" => "params_examples#query_params_method"
  get "/name" => "params_examples#name_method"
  get "/guess_game/:my_guess" => "params_examples#guess_game_method"

  get "/url_segment_params/:wildcard" => "params_examples#url_segment_params_method"

  get "/form_params" => "params_examples#form_params_method"
  post "/form_result" => "params_examples#form_result_method"
end

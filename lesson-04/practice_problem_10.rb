munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, data|
  case data["age"]
  when 0..17
    group = "kid"
  when 18..64
    group = "adult"
  else
    group = "senior"  
  end
  data["age_group"] = group
end

puts munsters
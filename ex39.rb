states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

def list_states_in_order(states)
  state_list = states.keys
  sorted_list = state_list.sort
  return sorted_list
end

first_state_alphabetically =  list_states_in_order(states).first
puts "Alphabetically (and really) the best state is #{first_state_alphabetically} or #{states[first_state_alphabetically]} for short"

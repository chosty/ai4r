require "ai4r"

data_set = [
	[0, 10, 5],
	[6, 0, 4],
	[25, 4, 0]
]

Ai4r::GeneticAlgorithm::Chromosome.set_cost_matrix(data_set)

search = Ai4r::GeneticAlgorithm::GeneticSearch.new(10,20)
result = search.run

puts "result cost: #{result.fitness}"
#result cost: -9
puts "result nodes: #{result.data.inspect}"
#result nodes: [0, 2, 1]

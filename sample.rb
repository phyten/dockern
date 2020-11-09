require_relative "lib/base"

stage = Dockern::Stage.new
stage.add(Dockern::Container.new("container_1"))
stage.add(Dockern::Container.new("container_2"))
stage.output(:png => "sample1.png")


# nodes shape:'box3d', colorscheme:'blues8', style:'filled'

# klasses.each do |klass|
#   klass.ancestors.reverse.each_cons(2).with_index(1) do |ab, i|
#     a, b = ab.map { |n| :"#{n}" }
#     route a => b
#     node b, fillcolor:i%9
#     edge [a, b] * '_', color:'maroon'
#   end
# end

# save :ruby, :png

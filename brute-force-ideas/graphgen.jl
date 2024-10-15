using Graphs
using GraphPlot
using Plots
using Colors
using Compose
include("explosion.jl")
# Set the GR backend to ensure plotting works
gr()
g = Graph()

stabs = ["XXXX","ZZZZ"]

num_qb = length(stabs[1])
stab_steps = length(stabs)
time_steps = 3

# Add vertices to the graph
for i in 1:num_qb
    add_vertex!(g)
end
vertex_colors = Dict(1=>"green",2=>"green",3=>"green",4=>"green")

for time in 1:time_steps
    for stab in stabs 
        stabvert = nv(g)+1
        add_vertex!(g)
        vertex_colors[stabvert] = stab[1] == 'X' ? "green" : "red"
        print(stab)
        for meas in stab
            vertnum = nv(g)+1
            add_vertex!(g)
            add_edge!(g, vertnum, vertnum-num_qb-1)
            add_edge!(g, vertnum, stabvert)
            if meas == 'X'
                vertex_colors[vertnum] = "red"
            else
                vertex_colors[vertnum] = "green"
            end
        end
    end
end

# Loop over all vertices and split nodes with more than 3 edges
for v in vertices(g)
    while degree(g, v) > 3
        # Print the node that needs to be split
        println("Node $v has more than 3 edges, splitting...")
        split_node!(g, v, vertex_colors)
    end
end


# Convert the colors to an array of RGB values
color_array = [parse(Colorant, vertex_colors[v]) for v in vertices(g)]

# Define labels as the vertex numbers
node_labels = [string(v) for v in vertices(g)]

graph_plot = gplot(g, nodelabel=node_labels,nodefillc=color_array)


draw(PNG("gengraph.png", 16cm, 16cm), graph_plot)

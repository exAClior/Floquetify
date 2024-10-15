using Graphs

# Create an undirected graph with some vertices
g = SimpleGraph(6)

# Add edges (vertex 3 will have 5 edges, which needs to be split)
add_edge!(g, 3, 1)
add_edge!(g, 3, 2)
add_edge!(g, 3, 4)
add_edge!(g, 3, 5)
add_edge!(g, 3, 6)

add_edge!(g, 1, 4)  # Some other edges
add_edge!(g, 2, 5)
draw(PNG("unexploded.png", 16cm, 16cm), gplot(g, nodelabel=1:nv(g),   # Label the nodes with their indices
edgelabel=1:ne(g)) )

# split a node with more than 3 edges
function split_node!(g::Graph, node::Int, vertcolors::Dict)
    neighbors_list = collect(neighbors(g, node))
    new_vertex = nv(g)+1
    add_vertex!(g)
    vertcolors[new_vertex] = vertcolors[node]
    add_edge!(g, node, new_vertex)
    add_edge!(g, new_vertex, neighbors_list[1])
    add_edge!(g, new_vertex, neighbors_list[2])
    rem_edge!(g, node, neighbors_list[1])
    rem_edge!(g, node, neighbors_list[2])
    #Note: This makes a choice on splitting which affects topology and coloring choices
end

# Loop over all vertices and split nodes with more than 3 edges
for v in vertices(g)
    while degree(g, v) > 3
        # Print the node that needs to be split
        println("Node $v has more than 3 edges, splitting...")
        split_node!(g, v)
    end
end

# Display the updated graph
println("Updated graph edges:")
for e in edges(g)
    println(e)
end


draw(PNG("explosion.png", 16cm, 16cm), gplot(g, nodelabel=1:nv(g),   # Label the nodes with their indices
edgelabel=1:ne(g)) )
using Random
using Plots
using GraphPlot
using Compose
using Cairo
using Fontconfig

function dfs_cycle_check(g::SimpleDiGraph, v::Int, visited::Vector{Bool}, parent::Int, rec_stack::Vector{Bool}, used_edges::Set{Tuple{Int, Int}})::Bool
    visited[v] = true
    rec_stack[v] = true

    for neighbor in outneighbors(g, v)
        edge = (v, neighbor)
        reverse_edge = (neighbor, v)
        
        # Skip if reverse edge is already used in this cycle
        if reverse_edge in used_edges
            continue
        end
        
        # Mark the edge as used
        push!(used_edges, edge)
        
        if !visited[neighbor]
            if dfs_cycle_check(g, neighbor, visited, v, rec_stack, used_edges)
                return true
            end
        elseif rec_stack[neighbor]
            return true
        end
    end

    rec_stack[v] = false
    return false
end

# Function to detect cycles ensuring no edge is used more than once
function has_cycle(g::SimpleDiGraph)::Bool
    visited = fill(false, nv(g))
    rec_stack = fill(false, nv(g))
    used_edges = Set{Tuple{Int, Int}}()

    for v in vertices(g)
        if !visited[v]
            if dfs_cycle_check(g, v, visited, -1, rec_stack, used_edges)
                return true
            end
        end
    end
    return false
end

gr()
n= 1000
g = SimpleDiGraph(n)
for i in 1:n
    for j in 1:2
        y = rand(i:n)
        if y != i && !has_edge(g,i,y)
                add_edge!(g, i, y)
                if rand() > 0.999
                    add_edge!(g, y, i)
                end
        end
    end
end

# Plot the graph
p = gplot(g, nodelabel=1:nv(g),   # Label the nodes with their indices
edgelabel=1:ne(g)) 

# save to png
draw(PNG("test.png", 16cm, 16cm), gplot(g, nodelabel=1:nv(g),   # Label the nodes with their indices
edgelabel=1:ne(g)) )
@time println(has_cycle(g))
# display(p)
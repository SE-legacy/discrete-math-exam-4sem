#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
= Полный граф, дополнение, объединение, соединение графов.
== Полный граф
Граф с $n$ вершинами называется полным, если степени всех вершин равны $n - 1$ (т.е. любые две его вершины соединены ребром). Обозначается $K_n$. $K_n = (V, V times V - Delta)$, где $Delta$ --- множество всех рёбер, которые являются петлями.

#let FullGraph(label, label_pos, nodes) = (
  label: label,
  label_pos: label_pos,
  nodes: nodes,
)

#let full_graphs = (
  FullGraph([$K_2$], (0, 3), ((0, 0), (0, 2))),
  FullGraph([$K_3$], (2, 3), ((2, 0), (2, 2), (3, 1))),
  FullGraph([$K_4$], (5, 3), ((4, 0), (4, 2), (6, 0), (6, 2))),
)

#diagram(
  spacing: (2em, 2em),
  {
    for graph in (full_graphs) {
      for n in graph.nodes {
        node(n, "", radius: 3mm, stroke: 1pt)
      }

      for i in graph.nodes {
        for j in graph.nodes {
          if i != j {
            edge(i, j)
          }
        }
      }

      node(graph.label_pos, graph.label)
    }
  },
)

== Дополнение графа
Пусть неориентированный граф $G = (V, alpha)$, тогда дополнение к $G$ называется $overline(G) = (V, overline(alpha) - Delta)$, где $overline(alpha)$ --- множество всех ребер, которые не содержатся в $alpha$.

То есть это граф, в котором соединены те вершины, которые не соединены в $G$.

#let nodes_count = 6
#let radius = 18mm

#let base_nodes = ()
#for i in range(nodes_count) {
  let θ = 90deg - i * 360deg / nodes_count
  let x = calc.cos(θ) * radius
  let y = calc.sin(θ) * radius
  base_nodes.push((x, y))
}

#let edges_indices_G = (
  (0, 1),
  (1, 2),
  (2, 3),
  (3, 4),
  (4, 5),
  (5, 0),
)

#let edges_indices_G_2 = (
  (0, 2),
  (0, 3),
  (0, 4),
  (1, 3),
  (1, 4),
  (1, 5),
  (2, 4),
  (2, 5),
  (3, 5),
)

#diagram({
  for (i, coord) in base_nodes.enumerate() {
    let pos = (coord.at(0), coord.at(1))
    node(pos, "", radius: 3mm, stroke: 1pt, name: label("g" + str(i)))
  }
  for (from, to) in edges_indices_G {
    edge(label("g" + str(from)), label("g" + str(to)))
  }
  node((0mm, -1.5 * radius), $G$, stroke: none)

  let offset = 60mm
  for (i, coord) in base_nodes.enumerate() {
    let pos = (coord.at(0) + offset, coord.at(1))
    node(pos, "", radius: 3mm, stroke: 1pt, name: label("c" + str(i)))
  }
  for (from, to) in edges_indices_G_2 {
    edge(label("c" + str(from)), label("c" + str(to)))
  }
  node((offset, -1.5 * radius), $overline(G)$, stroke: none)
})

== Объединение графов

Пусть $G_1 = (V_1, alpha_1)$ и $G_2 = (V_2, alpha_2)$

Объединением графов $G_1$ и $G_2$ называется граф $G_1 union G_2 = (V_1 union V_2, alpha_1 union alpha_2)$.

#let Node(label, position) = (
  label: label,
  position: position,
)

#let nodes = (
  Node([2], (0, 0)),
  Node([1], (0, 2)),
  //
  Node([3], (2, 0)),
  Node([1], (2, 2)),
  Node([4], (3, 1)),
  //
  Node([2], (5, 0)),
  Node([1], (5, 2)),
  Node([3], (7, 0)),
  Node([4], (7, 2)),
)

#let edges = (
  ((0, 0), (0, 2)),
  //
  ((2, 0), (2, 2)),
  ((2, 0), (3, 1)),
  ((2, 2), (3, 1)),
  //
  ((5, 0), (5, 2)),
  ((5, 2), (7, 0)),
  ((5, 2), (7, 2)),
  ((7, 0), (7, 2)),
)

#diagram({
  for n in nodes {
    node(n.position, n.label, stroke: 1pt, radius: 3mm)
  }
  for e in edges {
    edge(e.at(0), e.at(1))
  }

  node((1, 1), text(size: 24pt, $union$), stroke: none)
  node((4, 1), text(size: 24pt, $=$), stroke: none)
})

== Соединение графов
Пусть $G_1 = (V_1, alpha_1)$ и $G_2 = (V_2, alpha_2)$

Соединением графов $G_1$ и $G_2$ называется $G_1 + G_2 := (V_1 union V_2 , alpha_1 union alpha_2 union V_1 times V_2 union V_2 times V_1)$

Соединение сохраняет все рёбра из $G_1$ и $G_2$, а также в нём каждая вершина из $G_1$ соединена с каждой вершиной из $G_2$.

#let nodes = (
  Node([1], (0, 0)),
  Node([2], (0, 2)),
  //
  Node([3], (2, 0)),
  Node([4], (2, 2)),
  Node([5], (3, 1)),
  //
)

#let edges = (
  ((0, 0), (0, 2)),
  //
  ((2, 0), (2, 2)),
  ((2, 0), (3, 1)),
  ((2, 2), (3, 1)),
  //
)

#diagram({
  for n in nodes {
    node(n.position, n.label, stroke: 1pt, radius: 3mm)
  }
  for e in edges {
    edge(e.at(0), e.at(1))
  }

  node((1, 1), text(size: 24pt, $+$), stroke: none)
  node((4.5, 1), text(size: 24pt, $=$), stroke: none)

  let center_x = 7.0
  let center_y = 1.0
  let R = 1.3

  let res_labels = ([1], [2], [3], [4], [5])

  for i in range(5) {
    let θ = -18deg + i * 72deg
    let pos = (center_x + calc.cos(θ) * R, center_y + calc.sin(θ) * R)
    let node_name = "star" + str(i)
    node(pos, text(res_labels.at(i)), stroke: 1pt, radius: 3mm, name: label(node_name))
  }

  let indices = (0, 1, 2, 3, 4)

  for u in indices {
    for v in indices {
      if u != v {
        edge(label("star" + str(u)), label("star" + str(v)))
      }
    }
  }
})


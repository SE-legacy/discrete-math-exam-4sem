#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

= Критерий планарности графа (брал с лекции, там написано, что достаточность не надо)

#let radius = 18mm

#let nodes_type_1_count = 5
#let nodes_k5 = ()

#for i in range(nodes_type_1_count) {
  let θ = 90deg - i * 360deg / nodes_type_1_count
  let x = calc.cos(θ) * radius
  let y = calc.sin(θ) * radius
  nodes_k5.push((x, y))
}
#let nodes_type_1 = nodes_k5
#for i in range(nodes_type_1_count) {
  let θ = 15deg - i * 360deg / nodes_type_1_count
  let x = calc.cos(θ) * (radius - 12.5mm)
  let y = calc.sin(θ) * (radius - 12.5mm)
  nodes_type_1.push((x, y))
}

#let edges_indices_k5 = (
  (0, 1),
  (0, 2),
  (0, 3),
  (0, 4),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 3),
  (2, 4),
  (3, 4),
)

#diagram({
  for (i, coord) in nodes_k5.enumerate() {
    let pos = (coord.at(0), coord.at(1))
    node(pos, none, radius: 2mm, stroke: 1pt, name: label("g1" + str(i)))
  }
  for (from, to) in edges_indices_k5 {
    edge(label("g1" + str(from)), label("g1" + str(to)))
  }
  node((0mm, -1.3 * radius), [$K_5$], stroke: none)
  let offset = 60mm
  for (i, coord) in nodes_type_1.enumerate() {
    let pos = (coord.at(0) + offset, coord.at(1))
    node(pos, none, radius: 2mm, stroke: 1pt, fill: white, name: label("g2" + str(i)))
  }
  for (from, to) in edges_indices_k5 {
    edge(label("g2" + str(from)), label("g2" + str(to)))
  }
  node((offset, -1.3 * radius), [Произвольный граф типа I], stroke: none)
})

*Граф типа I* --- граф полученный из графа $K_5$, с добавленными вершинами на ребрах *не* в точках их пересечения.

#let nodes_k33 = ()
#for i in range(3) {
  nodes_k33.push((i * 2cm, -radius / 2))
  nodes_k33.push((i * 2cm, radius / 2))
}

#let nodes_type_2 = nodes_k33

#nodes_type_2.push((0cm, 0cm))
#nodes_type_2.push((4cm, 0cm))
#nodes_type_2.push((2cm, 3.5mm))
#nodes_type_2.push((2cm, -3.5mm))

#diagram({
  for (i, n) in nodes_k33.enumerate() {
    node((n.at(0), n.at(1)), none, radius: 2mm, stroke: 1pt, name: label("g1" + str(i)))
  }

  for i in (0, 2, 4) {
    for j in (1, 3, 5) {
      edge(label("g1" + str(i)), label("g1" + str(j)))
    }
  }

  node((2cm, -1.1 * radius), [$K_(3,3)$], stroke: none)
  let offset = 60mm

  for (i, n) in nodes_type_2.enumerate() {
    node((n.at(0) + offset, n.at(1)), none, radius: 2mm, stroke: 1pt, fill: white, name: label("g2" + str(i)))
  }

  for i in (0, 2, 4) {
    for j in (1, 3, 5) {
      edge(label("g2" + str(i)), label("g2" + str(j)))
    }
  }

  node((offset + 2cm, -1.1 * radius), [Произвольный граф типа II], stroke: none)
})

*Граф типа II* --- граф полученный из графа $K_(3,3)$, с добавленными вершинами на ребрах *не* в точках их пересечения.

== Теорема (критерий планарости графа)

Граф планарен $<=>$ в нем нет частей, изоморфных графом типа I или типа II.

*Доказательство*: (докажем только необходимость, достаточность не надо)

Пусть у нас $G$ --- планарный граф.

Докажем от противного. Мы предполагаем, что граф планарен и в нем есть части, изоморфны графом I или гр. II $=> K_(3, 3)$ --- планарный, $K_5$ --- планарный

Рассмотрим граф $K_5$ в нем $n = 5, space m = 10$.

Воспользуемся необходимым условием планарости (Следствие 3)

$
m lt.eq 3 (n - 2) = 9 => #[ противоречие]
$

Рассмотрим граф $K_(3, 3)$, $n = 6, space m = 9$.

Воспользуемся теоремой Эйлера

$
2 = n - m + r\

r = 2 - n + m = 5
$

$
underbrace(k, gt.eq 4) r = 2 m => 4 r lt.eq 2 m, space m gt.eq 2 r = 10 => #[ противоречие]
$

Следовательно, $K_5$ и $K_(3,3)$ не планарные.

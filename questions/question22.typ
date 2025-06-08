= Полный граф, дополнение, объединение, соединение графов;
== Полный граф
Граф называется полным, если любые две вершины соединены ребром. Обозначается $K_n$

#image("../images/22_01.png")

== Дополнение графа
Пусть неориентированный граф $G = (V, alpha)$, тогда дополнение к $G$ называется $overline(G) = (V, overline(alpha) - Delta)$

#image("../images/22_02.png")

== Объединение графов
Пусть $G_1 = (V_1, alpha_1)$ и $G_2 = (V_2, alpha_2)$

Объединение графов $G_1$ и $G_2$ называется $G_1 union G_2 = (V_1 union V_2, alpha_1 union alpha_2)$

#image("../images/22_03.png")

== Соединение графов
$ G_1 + G_1 := (V_1 union V_2 , alpha_1 union alpha_2 union V_1 times V_2 union V_2 times V_1)$

#image("../images/22_04.png")

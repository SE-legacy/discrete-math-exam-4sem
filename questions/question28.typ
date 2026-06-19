= Изоморфизм графов. Теорема об изоморфизме графов.
== Изоморфизм графов.
Два орграфа $arrow(G)_1 = (V_1, alpha_1)$ и $arrow(G)_2 = (V_2, alpha_2)$ называются изоморфными, если можно установить взаимно-однозначное соответствие $phi: arrow(G)_1 -> arrow(G)_2$, сохраняющее отношение смежности:

$
  forall u, v in V_1 space space (u, v) in alpha_1 <=> (phi(u), phi(v)) in alpha_2
$

== Теорема об изоморфизме графов.
Пусть $A$ и $B$ --- матрицы смежности $n$-вершинных ографов соответственно $arrow(G) = (U, alpha)$ и $arrow(H) = (V, beta)$.
Взаимно-однозначное соответствие $phi : U -> V$ тогда и только тогда является изоморфизмом графов $arrow(G)$ и $arrow(H)$, когда для представляющей его матрицы $Phi$ выполняется равенство $A Phi = Phi B$.

*Доказательство*:

Тождественное равенство $phi(alpha(u)) = beta(phi(u))$ равносильно равенству $alpha phi = phi beta$ для отношени $alpha subset.eq U times U$ и $beta subset.eq V times V$, $phi subset.eq U times V$, в матричной форме имеющего вид $A Phi = Phi B$.

Покажем, что $phi$ --- изоморфизм $<==>$ $phi(alpha(u)) = beta(phi(u))$ $forall u in U$.

_Необходимость_: Пусть $phi$ --- изоморфизм. Предположим, что $v in phi(alpha(u)) => phi^(-1)(v) in alpha(u) => (u, phi^(-1)(v)) in alpha$.

Тогда $(u, phi^(-1)(v)) in alpha$.

Так как $phi$ --- изоморфизм, получаем что $(phi(u), v) in beta$, откуда $v in phi(beta(u))$. Значит $phi(alpha(u)) subset.eq beta(phi(u))$.

С другой стороны, если $v in beta(phi(u))$, то $(phi(u), v) in beta$, откуда $(u, phi^(- 1) (v)) in alpha$, т.е. $phi^(- 1)(v) in alpha(u)$, и следовательно, $v in phi(alpha(u))$.

Получаем включение $phi(alpha(u)) subset.eq beta(phi(u))$, так что $phi(alpha(u)) = beta(phi(u)) space forall u in U$.

_Достаточность_: Пусть теперь $phi(alpha(u)) = beta(phi(u)) space forall u in U$. Докажем $(u_1, u_2) in alpha space <=> space (phi(u_1), phi(u_2)) in beta$.

Если $(u_1, u_2) in alpha$, то $u_2 in alpha(u_1)$, откуда $phi(u_2) in phi(alpha(u_1)) = beta(phi(u_1))$ и значит $(phi(u_1), phi(u_2)) in beta$.

С другой стороны, если $(phi(u_1), phi(u_2)) in beta$, то $phi(u_2) in beta(phi(u_1)) = phi(alpha(u_1))$, откуда $u_2 in alpha(u_1)$, т.е. $(u_1, u_2) in alpha$.

Таким образом для $forall u_1, u_2 in U$ истинна эквивалентность $(u_1, u_2) in alpha <=> (phi(u_1), phi(u_2)) in beta$, и, следовательно, $phi$ --- изоморфизм.

= Изоморфизм графов. Теорема об изоморфизме графов
== Изоморфизм графов.
Два орграфа $overline(G_1) = (U_1, alpha_1)$ и $overline(G_2) = (U_2, alpha_2)$ называются изоморфными, если можно установить взаимно однозначное соответствие $phi: V_1 -> V_2$, сохраняющее отношение смежности:

$
forall u, v in V_1 space space (u, v) in alpha_1 = (phi(u), phi(v)) in alpha_2
$

== Теорема об изоморфизме графов.
Пусть $A$ и $B$ --- матрица смежности $n$-вершинных ографов соответственно $overline(G) = (U, alpha)$ и $overline(H) = (V, beta)$. Взаимно однозначное соответствие $phi : U -> V$ тогда и только тогда является изоморфизмом графов $G$ и $H$, когда для представляющей его матрицы $Phi$ выполняется равенство $A Phi = Phi B$.

*Доказательство*

Пусть $phi$ --- изоморфизм. Предположим, что $v in phi(alpha(u))$. Тогда $(u, phi^(-1)(v)) in alpha$.

Так как $phi$ --- изоморфизм, получаем что $(phi(u), v) in beta$, откуда $v in phi(beta(u))$. Значит $phi(alpha(u)) subset.eq B(phi(u))$.

С другой стороны, если $v in beta(phi(u))$, то $(phi(u), v) in beta$, откуда $(u, phi^(- 1) (v)) in alpha$, т.е. $phi^(- 1)(v) in alpha(u)$, и следовательно, $v in phi(alpha(u))$.

Получаем включение $beta(phi(u)) subset.eq phi(alpha(u))$, так что $phi(alpha(u)) = beta(phi(u)) space forall u in U$.

Пусть теперь $phi(alpha(u)) = beta(phi(u)) space forall u in U$. Если $(u_1, u_2) in alpha$, то $u_1 in alpha(u_1)$, откуда $phi(u_2) in phi(alpha(u_1)) = beta(phi(u_1))$ и значит $(phi(u_1), phi(u_2)) in beta$.

С другой стороны, если $(phi(u_1), phi(u_2)) in beta$, то $phi(u_2) in beta(phi(u_1)) = alpha(phi(u))$, откуда $u_2 in alpha(u_1)$, т.е. $(u_1, u_2) in alpha$.

Таким образом $forall u_1, u_2 in U$ истина эквивалентность $(u_1, u_2) in alpha <=> (phi(u_1), phi(u_2)) in beta$, и, следовательно $phi$ --- изоморфизм.

Тождественное равенство $phi(alpha(u)) = beta(phi(u))$ равносильно равенству $alpha phi = phi beta$ для отношени $alpha subset.eq U times U$ и $beta subset.eq V times V$, $phi subset.eq U times V$ в матричной форме имеющему вид $A Phi = Phi B$.

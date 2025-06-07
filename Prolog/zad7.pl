% Zdefiniuj predykat należy(X, Lista), który sprawdza, czy element X należy do listy Lista. Na przykład należy(a, [a, b, c]). powinno zwrócić true.

należy(X, Lista) :-	
    member(X, Lista).
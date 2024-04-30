# Gerador de jogos - Loterias da Caixa

Um projeto desenvolvido para fins de estudo da vertente do Flutter para o contexto WEB. Visa gerar jogos para as loterias da caixa mas, por enquanto, apenas padrões de geração de jogos para a Lotofácil.

## Dependências

1. get
2. responsive_framework
3. dio
4. intl
5. universal_html
6. package_info_plus

## Comandos uteis

- flutter build web & rd /s /q "docs" & mkdir "docs" & xcopy /E /Y "build\web\*" "docs\"
- flutter format .
- flutter pub get

## URL

Acesso via: https://hugows007.github.io/gerador_jogos/

## Deploy Github pages

No index.html:

**Alterar:**

```html
  <base href="/">
```

**Para:**

```html
  <base href="./">
```
# base_template_flutter

Este é um template de projeto Flutter que segue as melhores práticas de arquitetura e desenvolvimento. Ele é projetado para ser escalável, testável e fácil de manter, utilizando Clean Architecture, BLoC para gerenciamento de estado e outras convenções modernas do Flutter.

## Estrutura do Projeto

- `lib/`
  - `domain/`: Contém as entidades, casos de uso e repositórios abstratos.
  - `data/`: Implementações concretas dos repositórios, fontes de dados e modelos.
  - `infra/`: Configurações de injeção de dependência e outras infraestruturas.
  - `presentation/`: Widgets, BLoCs e outros componentes relacionados à interface do usuário.
- `test/`: Testes unitários e de widget.

## Regras de Desenvolvimento

1. **Arquitetura:** Siga a Clean Architecture estrita. O `domain` não deve conhecer nada de `data`, `infra` ou `presentation`. Nenhuma biblioteca externa do Flutter deve ser usada no `domain`.
2. **Gerência de Estado:** Use exclusivamente BLoC (`flutter_bloc`) com `freezed`. Não crie Cubits a menos que explicitamente solicitado. Todo estado e evento deve ser mapeado com Freezed.
3. **Proibição de Singletons:** É terminantemente proibido criar Singletons. A injeção de dependência deve ser feita via construtor. Se um Singleton for criado, considere isso uma falha crítica.
4. **Anti-God Class:** Mantenha o princípio da Responsabilidade Única (SRP). Se um BLoC ou Widget passar de 200 linhas, divida-o imediatamente.
5. **Estilo de Código:** Escreva código declarativo, com tipagem forte, e sempre lide com o tratamento de erros (use `Result` incluso no projeto `lib/infra/result/simple_result.dart`).

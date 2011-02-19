# Novo site do Guru-SP

## Descrição

A ideia desse projeto é criar um novo site para o Guru-SP (Grupo de Usuário Ruby de SP) utilizando Rails 3 e outras gems e plugins comumente utilizados.

Atualmente o [site do Guru-SP](http://www.guru-sp.org) utiliza o Mediawiki (engine de wiki da Wikipedia).

Qualquer pessoa pode participar do projeto, basta pedir acesso de commiter ou fazer um fork do projeto e então fazer um pull request.

O desenvolvimento das funcionalidades do projeto será organizado através de um [projeto no Pivotal Tracker](https://www.pivotaltracker.com/projects/211425) (envie seu e-mail utilizado no pivotal para contato at guru-sp.com para ser adicionado ao projeto).

***

## Funcionalidades básicas

Aqui estou listando coisas que acredito serem interessantes para o site. Não é uma lista fechada nem completa. Pode-se remover ou adicionar novas funcionalidades/seções de acordo com as ideias e disposição dos desenvolvedores.

## Home

  É a página inicial do site.

  O que há na home:

    - Introdução básica sobre o que é o grupo
    - Link/data e descrição do próximo encontro
    - Link/data e descrição do último encontro
    - Patrocinadores / Apoio (Logo e link das empresas que apoiam o Guru-SP)
    - Barra de navegação:
        - Sobre: história e objetivos do Guru-SP
        - Encontros: Histórico dos encontros/eventos realizados pelo Grupo
        - Contato: formulário/email/twitter para entrar em contato com staff do Grupo
        - Lista de discussão: Link para a lista de discussão do Google Groups
        - Membros: Lista de membros participantes
    - Últimos twits do guru-sp
    - Link no logo do grupo para voltar para a home


  **Bônus**:

    - Recursos - Página editável (ao estilo wiki) com recursos para quem está começando com Ruby/Rails, como livros,
      blogs, vídeos, material gratuito, entre outros
    - Mostrar na home últimas postagens da Lista de discussão
    - Links para outros Gurus e grupos Ruby pelo mundo
    - Projetos (projetos do guru no github)
    - Vagas / oportunidades (integração www.ondetrabalhar.com)
    - Feedback ( Link para sugestões de melhorias)
    - Empresas onde se trabalhar
    - Planet de blogs dos membros
    - [Sua ideia aqui]

## Seção encontros

É a seção mais importante do site que reune o que aconteceu/acontecerá nos encontros presenciais do grupo e pode ser a primeira a ser desenvolvida.

Um encontro é formado por:
  - Título (ex: 14o Encontro)
  - Data (quando ocorreu, ocorrerá)
  - Horário (início e término)
  - Descrição (texto livre apresentando o encontro)

  - Local
    - endereço e imagem do google maps do local (lugar padrão é a Caelum)

  - Inscrição/quem vai - Apenas um link para o Agendatech (não precisa ser implementado pelo sistema)

  - Atividades (o que haverá no encontro: pode ser palestra, coding dojo, mesa redonda, coffee break ou outra atividade)
    - tipo da atividade
    - se for palestra
      - título
      - apresentador(es)
      - slides (embed do slideshare, link para site ou PDF com os slides utilizados)
      - vídeo  (embed do youtube, blip.tv ou outro site em que o vídeo foi hospedado)
      - Descrição e recursos (texto livre com mais detalhes e possíveis links que sirvam de referência para o assunto)


  - Álbum de fotos (álbum de fotos do encontro, pode ser embed de fotos do Picasa/Flickr ou apenas link)

  - Posts sobre o encontro (links para blogs falando sobre como foi o encontro)

  - Apoiodores
    - Link, logo e nome dos patrocinadores/apoiadores desse encontro


## Seção sobre

  Página editável por membros fundadores contando:
   - como e quando o Guru-SP foi criado;
   - motivação e objetivos do grupo.


## Seção contato

  Contém informações sobre como entrar em contato com o grupo:
   - formulário de contato (email de quem entra em contato, motivo do contato, título e corpo)
   - email do staff
   - twitter
   - lista de discussão


## Seção membros

  Basicamente é uma lista em que os membros podem colocar um pouco a seu respeito

  Total de membros

  Cada membro pode adicionar:
    - avatar (pode ser retirado do twitter/gravatar)
    - twitter
    - blog/página pessoal
    - link working with rails
    - link rails i am
    - link github
    - link linkedin

## Seção patrocinadores

  Além de colocar os apoiadores dos encontros (que fornecem local e coffee break) seria interessante colocar em um único local todas as empresas que já coloboraram com o Guru-SP em encontros anteriores.


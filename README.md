# "Disciplina: Projetos de análise de dados usando R"
### Andrea Sánchez-Tapia, Sara Mortara, Diogo Rocha

Núcleo de Computação Científica e Geoprocessamento - Instituto de Pesquisas Jardim Botânico do Rio de Janeiro 

# Apresentação

__Público Alvo e Pré-requisitos:__ Alunos de pós-graduação interessados em analisar os próprios dados, de maneira reproduzível, usando o ambiente estatístico __R__.  <!-- Os alunos deverão ter uma proposta prévia das análises que pretendem realizar, e um grupo de dados final ou preliminar para começar a realizar as análises. -->  A experiência prévia com __R__ é desejável, porém opcional.

Número de Vagas: 10

O ambiente estatístico __R__ está sendo cada vez mais utilizado em biologia, ecologia e taxonomia, não só pela robusteza e variedade de análises que podem ser feitas, mas também porque proporciona um entorno reproduzível, por estar baseado em _scripts_. Isto permite fazer o seguimento do fluxo de trabalho inteiro, realizar correções de maneira rápida e robusta, aumentar a quantidade de dados que podem ser analisados e contribuir a criar uma ciência mais aberta. Há múltiplos cursos de __R__ nas pós-graduações, porém estes se focam no aprendizado da linguagem e da estatística, sem focar na estrutura dos projetos de análise, o qual dificulta que o aluno mantenha a continuidade no uso das ferramentas. 

# Objetivos

Entender a estrutura básica de um projeto de análise de dados, aprender o básico de __R__, aprender onde e como buscar as soluções específicas para os próprios problemas e a executar as análises de uma maneira organizada e reproduzível. Isto é, separando os dados brutos e modificados, e dando visibilidade, reprodutibilidade e portabilidade a cada passo da análise, para que esta possa ser replicada posteriormente. O aluno também aprenderá sobre a realização de relatórios dinâmicos usando rmarkdown.  <!-- A avaliação será feita diretamente a partir de problemas e dados reais dos discentes, buscando que cada um consiga atingir objetivos dentro de seu próprio projeto de tese/dissertação. --> 


# Conteúdo programático: 

1.	Introdução à ciência aberta (open science).
2.	Introdução ao ambiente estatístico __R__: história, interfaces gráficas de usuário (GUIs), CRAN, Taskviews, instalação de pacotes, como buscar ajuda.
 <!-- http://datacarpentry.org/semester-biology/materials/googling-for-help/ --> 
3.	Diferença entre script, consola, pasta de trabalho e _workspace_, projetos de RStudio. 
4.	Estrutura de um projeto de análise de dados
5.	Formatação e limpeza de dados.
6.	Tipos de dado: Númerico, lógico, integer, character, e de objeto: Vetores, matrizes, dataframes, tibbles, listas. 
7.	Importando e exportando dados. Excel, csv, txt, rda. Importação de dados de outros programas estatísticos, árvores filogenéticas, shapefiles e rasters.
8.	Manipulação e conversão de objetos com dplyr e base __R__. 
9.	Análise exploratória de dados.
10.	Criação e exportação de figuras. 
11.	Relatórios reproduzíveis usando rmarkdown.


# Responsáveis

__Andrea Sánchez-Tapia__ Bióloga pela Universidade Nacional da Colômbia, mestre em ecologia pela UFRJ e doutora em Botânica pela ENBT-JBRJ. Atualmente pesquisadora pós-doutoral (PNPD) da ENBT/JBRJ, onde trabalha como desenvolvedora back-end do pacote de R Model-R, uma ferramenta para modelagem da distribuição de espécies, sob supervisão da Dra. Marinez Ferreira de Siqueira. Usuária de R desde 2009. Membro de R-Ladies Rio

__Sara Mortara__ Bióloga pela ESALQ/Universidade de São Paulo mestre em Ecologia e Conservação da Biodiversidade pela UESC e doutora em Ecologia pela USP. Atualmente pesquisadora pós-doutoral no Núcleo de Computação Científica e Geoprocessamento, sob supervisão da Dra. Marinez Ferreira de Siqueira. Usuária de R desde 2009, com ênfase em modelagem estatística para responder questões gerais em Ecologia.

__Diogo Souza Bezerra Rocha__ Biólogo Bacharel em Ciências Biológicas, com ênfase em Ecologia, Mestre em Botânica. Doutor em Ecologia e Conservação da Biodiversidade. Atualmente pesquisador pós-doutoral do Instituto de Pesquisas Jardim Botânico do Rio de Janeiro, onde trabalha como desenvolvedor de ferramenta Model-R, para modelagem de nicho ecológico de espécies. Tem experiência em ambiente de programação R (https://github.com/diogosbr) e programas de Sistema de Informação Geográfica (SIG). 

# Programa 

|  Hora  |  Segunda|  Terça|  Quarta|  Quinta|  Sexta|  
|-------:|------:|------:|------:|------:|------:|  
|  09h-13h |Aula 1 - Introdução| Aula 3 - Limpeza de dados|  Aula 5 - Análise exploratória de dados|  Aula 7 - Prática| Aula 9 - Rmarkdown|  
|  14h-18h |Aula 2 - Prática|  Aula 4 - Prática| Aula 6 - Prática|  Aula 8 - Prática|  Aula 10 - R-ecursos|  


## Dia 1

### Aula 1. Introdução, apresentação da disciplina
+ Open science e reprodutibilidade
+ Introdução ao R
+ Comunidade R - onde buscar ajuda
 <!-- objetivos de la materia, ayudar, agrupar, quitar la barrera y colaborar, y ayudar a comenzar a una transición hacia una ciencia más abierta.
Cada uno ha llenado un formulario con sus datos principales - probablemente se conocen, cada uno presenta qué hace, con quién, y qué miniproyecto va a estar tratando durante estos meses - ¿es el seminario? ¿es algo en particular de la tesis?
agruparlos - habrá ecólogos, habrá taxónomos, gente de algas, semillas, anatomía. Los que saben más pueden ayudar a ayudar, --> 

### Aula 2. Prática de introdução ao ambiente R
+ Organização de arquivos e estrutura de pastas

https://nicercode.github.io/blog/2013-04-05-projects/

<!-- recordar que R maneja la noción de pasta de trabalho (working directory)

    integridad del proyecto
    portabilidad
    voltar e entender o que era feito- você do passado é seu melhor colaborador

-- datos_crudos no se modifican  
-- datos_processados  
-- outputs  
---figuras  
-- texto  
 -->

+ Criação de projetos no RStudio
+ Introdução ao git

 <!-- Definición 
+ O que é ciência aberta (e por que pensar nela num curso sobre análise de dados em R?)
 Pilares de la ciencia abierta, 
 Passos para que la pesquisa sea más abierta
 Barreras para llegar a una ciencia abierta (incluyendo malpractice)
 Open and FAIR (Findable, Accessible, Interoperable and Reusable)) 
 Science fases que deberían en un esquema full desde el almacenamiento de los datos, el procesamiento, la publicación en periódicos open (que es probablemente lo único que muchos hacen) 
 
 ¿depositar datos? ¿manejarlos? garantizar que estén disponibles, que se puedan volver a generar los resultados (reproducibilidad).
 
 que integren bases de datos locales o mundiales - hay esas bases de datos en sus áreas? herbários duh, gbif, genes? genbank, bases de traits. TRY. 
 debates, ¿por qué sí o por qué no?¿vale la pena? qué toca hacer para mejorar?
 + herramientas y workflows de trabajo. cómo trabajabamos antes - cómo trabajamos hoy. qué falta mejorar. ¿cómo trabajan ellos? cómo deberían y qué espacio hay para mejorar. ¿cómo funciona el almazenamiento de datos en sus laboratorios? - research data management --> 
 

 <!-- + História
+ Características
+ Vantagens
    + reproducibilidad, _script-based_, no clicks - menos trabajo más confiable
    + integración con otras herramientas
    + modular, interdisciplinario, extensible
    + permite procesar un gran volumen de trabajo
    + gráficos de calidad de publicación
    + la comunidad
    + gratis, open source, cross-platform

2. Rstudio e outras GUIs. RStudio (Integrated Development Environments IDE)

3. Pacotes e comunidade: CRAN, Taskviews, instalação de pacotes

4. Como buscar ajuda.

https://datacarpentry.org/R-ecology-lesson/00-before-we-start.html  
http://datacarpentry.org/semester-biology/materials/googling-for-help/  
http://community.rstudio.com --> 

<!-- ### Sessão 3 - Introdução ao ambiente estatístico R - aula prática -->
<!-- (aula já mãos na massa, apresentando o rstudio e falando de cada aspecto enquanto mostra) -->
<!-- Todo mundo no mesmo block de carpentries -->

<!-- Abrir, criar um script. -->
<!-- Salvar na pasta qualquer do curso. -->
<!-- O script. .R na pasta. -->
<!-- getwd() -->
<!-- a pasta está aí -->
<!-- salvar o arquivo na mesma pasta. -->


<!-- fechar, tranquilo. abrir de novo, criar um projeto de R. -->

<!-- getwd() hasta que todos entiendan perfecto y tengan un rproj en la carpeta con un .R -->

<!-- o que acontece quando estamos por fora do projeto? -->


<!-- isso tem que ficar super claro porque o projeto é super útil -->

<!-- Todo mundo con un proyecto  y un script vacío llamado script.R -->
<!-- script, -->
<!-- pasta de trabalho, -->
<!-- consola - terminal -->
<!-- historia -->
<!-- navegador de arquivos, -->
<!-- workspace -->
<!-- programação dirigida a objetos. -->
<!-- 2+2 -->
<!-- vs. a <- 2 + 2 -->
<!-- a -->
<!-- no está en los archivos, está en el workspace. -->
<!-- todo tendrá que ser leído y reescrito para guardar. -->
<!-- funções básicas -->
<!-- calculadora -->


## Dia 2
### Aula 3. Limpeza de dados
+ Noções básicas de tabulação de dados
+ Conversão de dados em .csv

### Aula 4. Prática de limpeza de dados
+ Lendo uma planilha de dados no R
+ Inspeção dos dados no R
+ Limpeza e auditoria dos dados

https://datacarpentry.org/spreadsheet-ecology-lesson/

No final desta lição o aluno terá noções de como organizar uma tabela de dados em excel ou libreoffice,

How many people have used spreadsheets in their research?
How many people have accidentally done something that made them frustrated or sad?

## Dia 3

### Aula 5. Análise Exploratória de Dados
+ Manipulação de dados
+ Gráficos exploratórios
+ Distribuições estatísticas

### Aula 6. Prática de análise exploratória de dados
+ Seguir tutorial da prática de análise exploratória de dados

## Dia 4

### Aula 7. Criação e exportação de figuras em R

+ Edição de gráficos em R
+ Noções básicas de cores e resolução de arquivos


### Aula 8. Prática de gráficos em R
+ Seguir tutorial da prática de análise exploratória de dados

## Dia 5

### Aula 9. Elaboração de relatórios em RMarkdown

+ RMarkdown
+ Gerenciamento de bibliografias (Zootero/Mendeley)

### Aula 10. R-ecursos para biólog@s
+ Visão geral de pacotes em R para análises ecológicas, sistema de informação geográfica, filogenias...
+ Discussão do trabalho final

# Bibliografia 

Annesley, T. M. (2010). Who, What, When, Where, How, and Why: The Ingredients in the Recipe for a Successful Methods Section. Clinical Chemistry, 56(6), 897–901. doi:10.1373/clinchem.2010.146589  

Baumer, B., Cetinkaya-Rundel, M., Bray, A., Loi, L., & Horton, N. J. (2014). R Markdown: Integrating A Reproducible Analysis Tool into Introductory Statistics. ArXiv:1402.1894 [Stat]. Retrieved from http://arxiv.org/abs/1402.1894

Biotaxa: Online library for taxonomic journals. (n.d.). Retrieved February 4, 2019, from https://www.biotaxa.org/ 

Borregaard, M. K., & Hart, E. M. (2016). Towards a more reproducible ecology. Ecography, 39(4), 349–353. doi:10.1111/ecog.02493

Bryan, J. (2018). Project-oriented workflow - Tidyverse. Retrieved February 5, 2019, from https://www.tidyverse.org/articles/2017/12/workflow-vs-script/

Chamberlain, S. A., & Szöcs, E. (2013). taxize: taxonomic search and retrieval in R. F1000Research. doi:10.12688/f1000research.2-191.v2

Gewin, V. (2016). Data sharing: An open mind on open data. Nature, 529(7584), 117–119.

Hampton, S. E., Anderson, S., Bagby, S. C., Gries, C., Han, X., Hart, E., others. (2014). The tao of open science for ecology. PeerJ PrePrints. Retrieved from https://peerj.com/preprints/549/

Lowndes, J. S. S., Best, B. D., Scarborough, C., Afflerbach, J. C., Frazier, M. R., O’Hara, C. C., … Halpern, B. S. (2017). Our path to better science in less time using open data science tools. Nature Ecology & Evolution, 1(6), s41559-017-0160–017. doi:10.1038/s41559-017-0160

Marwick, B., Boettiger, C., & Mullen, L. (2017). Packaging data analytical work reproducibly using R (and friends). PeerJ Preprints. doi:/10.7287/peerj.preprints.3192v1

Mislan, K. A. S., Heer, J. M., & White, E. P. (2016). Elevating the status of code in Ecology. Trends in Ecology & Evolution, 31(1), 4–7. doi:http://dx.doi.org/10.1016/j.tree.2015.11.006

Noble, W. S. (2009). A Quick Guide to Organizing Computational Biology Projects. PLOS Computational Biology, 5(7), e1000424. doi:10/fbbpkn

Penev, L., Kress, W. J., Knapp, S., Li, D.-Z., & Renner, S. (2010). Fast, linked, and open – the future of taxonomic publishing for plants: launching the journal PhytoKeys. PhytoKeys, (1), 1–14. doi:10/chv8xq

Peng, R. (2015). The reproducibility crisis in science: A statistical counterattack. Significance, 12(3), 30–32. doi:10.1111/j.1740-9713.2015.00827.x

Piccinini, P. (2015, December 30). R Course. Retrieved February 4, 2019, from https://pagepiccinini.com/r-course/

Reichman, O. J., Jones, M. B., & Schildhauer, M. P. (2011). Challenges and Opportunities of Open Data in Ecology. Science, 331(6018), 703–705. doi:10.1126/science.1197962

Shade, A., & Teal, T. K. (2015). Computing Workflows for Biologists: A Roadmap. PLoS Biol, 13(11), e1002303. doi:10.1371/journal.pbio.1002303

Strasser, C. A., & Hampton, S. E. (2012). The fractured lab notebook: undergraduates and ecological data management training in the United States. Ecosphere, 3(12), art116. doi:10.1890/ES12-00139.1

Toczydlowski, R. H. (2017). An Efficient Workflow for Collecting, Entering, and Proofing Field Data: Harnessing Voice Recording and Dictation Software. The Bulletin of the Ecological Society of America, 98(4), 291–297. doi:10.1002/bes2.1334

Tukey, J. W. (1977). Exploratory Data Analysis (Vol 2). 

Zuur, A. F., Ieno, E. N., & Elphick, C. S. (2010). A protocol for data exploration to avoid common statistical problems. Methods in Ecology and Evolution, 1(1), 3–14. doi:10/cw57t3




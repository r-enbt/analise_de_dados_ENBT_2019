Aula 09 Relatórios reproduzíveis em markdown
====

+ Durante a discussão sobre a pasta onde os documentos deveriam ser knitados, eu recomendei manter a pasta do projeto mas a melhor opção é manter a pasta do documento mesmo, dessa forma todos os demais arquivos serão chamados via `..`. 
+ Porém na hora de testar o código "por fora" documento lembre que o script entende a pasta do projeto como pasta de trabalho, portanto as chamadas serão ainda como subpastas. 

+ `.` para scripts 
+ `..` dentro de um markdown que está dentro de uma subpasta. 

Isto vai ficando mais claro com o tempo.

+ Também acrescentei dois slides sobre tabelas, que não discutimos a profundidade na aula. Tabelas são a dor de cabeça na hora de trabalhar em rmarkdown. A melhor opção atualmente é o pacote __kableExtra__, que trabalha encima da função `kable()` do pacote __knitr__. Outra boa opção é o pacote __pander__, que tem opçães para outro tipo de objetos de R (por exemplo o output de modelos e summaries)


Algumas referências: 
+ Markdown table generator: [http://www.tablesgenerator.com/markdown_tables](http://www.tablesgenerator.com/markdown_tables)
+ kableExtra [https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html)
+ Using pander with knire [https://cran.r-project.org/web/packages/pander/vignettes/knitr.html](https://cran.r-project.org/web/packages/pander/vignettes/knitr.html)

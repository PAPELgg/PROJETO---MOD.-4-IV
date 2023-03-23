//Alunos
table alunos {
  id_alunos serial [pk]
  nome varchar
  matricula varchar
  cpf varchar
}

//Curso
table curso{
  id_curso serial [pk]
  nome varchar
  duracao time
  descricao text
}

//Turma
table turma  {
  id_turma serial [pk]
  turma int
}

//Materia
table materia  {
  id_materia serial [pk]
  duracao time
  nome varchar
}


//Relação das entidades
Ref: "alunos"."id_alunos" < "curso"."id_curso"
Ref: "curso"."id_curso" < "turma"."id_turma"
Ref: "turma"."id_turma" < "materia"."id_materia"

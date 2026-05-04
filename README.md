# Curso de Scripting (Alura)

Repositório de estudos de **Scripting** (Alura), com foco no que eu pratiquei durante o curso:

- **Scripts em Bash** para automação e validações
- **Docker**: criação de imagens e publicação no **Docker Hub**
- **Observação:** a pasta `projeto/` contém projetos públicos da Alura usados no curso (não são de autoria minha). O que eu desenvolvi aqui são principalmente os **scripts `.sh`** e os estudos de **Docker/Docker Hub**.

---

## Estrutura do repositório

- `*.sh` — scripts em Bash criados durante o curso
- `projeto/` — projetos de referência/exercício (não autorais)

---

## Scripts (Bash)

### 1) Verificar conflito de merge em um arquivo
Verifica se um arquivo contém marcações de conflito do Git (`<<<<<<<`, `=======`, `>>>>>>>`).

**Arquivo:** `verificaconflito.sh`  
**Uso:**
```bash
chmod +x verificaconflito.sh
./verificaconflito.sh caminho/do/arquivo.ext
```

---

### 2) Verificar conflito de merge em um diretório (recursivo)
Varre um diretório (e subdiretórios) procurando marcações de conflito em arquivos.

**Arquivo:** `verifica-diretorio.sh`  
**Uso:**
```bash
chmod +x verifica-diretorio.sh
./verifica-diretorio.sh caminho/do/diretorio
```

> Existe também uma versão alternativa mais simples:
- `verifica-conflito-diretorio.sh`

---

### 3) Monitoramento de uso de disco com log
Coleta o uso de disco de um ponto de montagem e grava em um arquivo `.log` com timestamp.

**Arquivo:** `monitoramento-disco.sh`  
**O que faz (resumo):**
- Consulta uso do disco via `df -h`
- Filtra um ponto de montagem específico
- Gera um log com data/hora

**Uso:**
```bash
chmod +x monitoramento-disco.sh
./monitoramento-disco.sh
```

> Dica: se necessário, ajuste no script o `ponto_montagem` e o `diretorio` onde os logs serão salvos.

---

### 4) Monitoramento simples de servidor (HTTP status)
Faz uma requisição e imprime o **código HTTP** retornado (útil para health-check simples).

**Arquivo:** `monitoramento-servidor.sh`  
**Requisito:** `curl`

**Uso:**
```bash
chmod +x monitoramento-servidor.sh
./monitoramento-servidor.sh
```

---

## Docker / Docker Hub (anotações do estudo)

Durante o curso eu também estudei:

- criação de **imagens Docker**
- execução de containers localmente
- publicação de imagens no **Docker Hub**

> Os exemplos/projetos utilizados para isso estão dentro de `projeto/` (base do curso), mas o aprendizado aplicado foi sobre o fluxo: **build → tag → push**.

Exemplo de comandos (genérico):
```bash
# build
docker build -t meu-usuario/minha-imagem:1.0 .

# tag (se necessário)
docker tag meu-usuario/minha-imagem:1.0 meu-usuario/minha-imagem:latest

# login
docker login

# push
docker push meu-usuario/minha-imagem:1.0
docker push meu-usuario/minha-imagem:latest
```

## Imagens Públicas no Docker Hub

As imagens publicadas deste projeto estão disponíveis em:
- **Frontend:** `secundo/adopet-frontend`
- **Backend:** `secundo/adopet-backend`

---

## Como executar (Linux/macOS)

1. Clone o repositório:
```bash
git clone https://github.com/RodrigoSecundo/curso-scripting.git
cd curso-scripting
```

2. Dê permissão de execução ao script desejado:
```bash
chmod +x nome-do-script.sh
```

3. Execute:
```bash
./nome-do-script.sh [argumentos]
```

---

## Tecnologias

- Bash / Shell Script
- Docker
- (Projetos de apoio na pasta `projeto/`: JavaScript/TypeScript/CSS/HTML)

---

## 👨‍💻 Autor
Rodrigo Secundo

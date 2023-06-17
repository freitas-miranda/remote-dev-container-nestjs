# Criar projeto
npx nest new nestjs-sse

# Subir a aplicação
npm run start:dev

# Entrar no container do node
docker compose exec app bash

# Entrar no container do mysql
docker compose exec mysql bash

# Adicionar ORM Prisma
npx prisma init

# Criar banco de dados após definir schema
npx prisma migrate dev

# Gerar um novo módulo no nest
npx nest g module reports
npx nest g module prisma

# Gerar um novo service no nest
npx nest g service reports/reports
npx nest g service reports/reports-job
npx nest g service prisma/prisma

# Gerar um novo controller no nest
npx nest g controller reports/reports

# Adicionar lib bull para agendar execuções
npm install @nestjs/bull bull

# Adicionar bars
npm install hbs

# Liberar porta em uso
npx kill-port 3000
lsof -i tcp:3000
kill -9 PID

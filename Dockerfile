FROM node:20-alpine AS builder

WORKDIR /usr/src/app

RUN corepack enable

# 소스 코드 복사
COPY . .

# 의존성 설치
RUN yarn

# Next.js 빌드
RUN yarn build

EXPOSE 3030

CMD ["yarn", "start", "--hostname", "0.0.0.0", "--port", "3030"]
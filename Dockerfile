# Node.js 이미지를 기반으로 사용
FROM node:14

# 작업 디렉토리 생성
WORKDIR /app

# package.json과 package-lock.json을 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 애플리케이션 소스 복사
COPY . .

# 컨테이너에서 사용할 포트 설정
EXPOSE 3000

# 애플리케이션 실행
CMD ["npm", "start"]

# 공식 NGINX 이미지를 기반으로 사용
FROM nginx:alpine

# 이미지를 설명하는 이름표
LABEL org.opencontainers.image.title="my-workstation-web"

# 실행 환경을 구분하는 값
ENV APP_ENV=dev

# 내 웹페이지를 NGINX가 읽는 폴더로 복사
COPY app/ /usr/share/nginx/html/

# 웹 서버가 80번 포트를 쓴다는 설명
EXPOSE 80
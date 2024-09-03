# 베이스 이미지로 알파인 리눅스를 사용하여 경량화된 이미지를 만듭니다.
FROM alpine:latest

# Nginx와 관련 패키지를 설치합니다.
RUN apk update && \
    apk add --no-cache nginx

# 작업 디렉토리를 설정합니다.
WORKDIR /usr/share/nginx/html

# 현재 디렉토리의 모든 파일을 Nginx 웹 루트로 복사합니다.
COPY . .

# Nginx를 foreground에서 실행하도록 설정합니다.
CMD ["nginx", "-g", "daemon off;"]

# Nginx의 기본 포트 80을 외부로 노출합니다.
EXPOSE 80

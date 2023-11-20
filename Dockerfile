FROM ubuntu:jammy
RUN sed -i 's|cn.archive.ubuntu.com|mirrors-sc.iflytek.com/mirrors|g' /etc/apt/sources.list && \
    sed -i 's|archive.ubuntu.com|mirrors-sc.iflytek.com/mirrors|g' /etc/apt/sources.list && \
    sed -i 's|security.ubuntu.com|mirrors-sc.iflytek.com/mirrors|g' /etc/apt/sources.list && \
    sed -i 's|deb.debian.org|mirrors-sc.iflytek.com/mirrors|g' /etc/apt/sources.list && \
    sed -i 's|mirrors.ustc.edu.cn|mirrors-sc.iflytek.com/mirrors|g' /etc/apt/sources.list && \
    sed -i 's|mirrors.tuna.tsinghua.edu.cn|mirrors-sc.iflytek.com/mirrors|' /etc/apt/sources.list && \
    sed -i 's|security.debian.org/debian-security|mirrors-sc.iflytek.com/mirrors/debian-security|g' /etc/apt/sources.list && \
    sed -i 's|https|http|g' /etc/apt/sources.list
RUN apt update && apt install -y ncdu htop nano vim systemd
ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
COPY app /app
ENTRYPOINT ["/entrypoint.sh"]

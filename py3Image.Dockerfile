FROM alpine:3.7
ENV PLINKVER=180109
RUN apk --no-cache --update-cache add gcc gfortran python3 python3-dev py3-pip build-base wget freetype-dev libpng-dev openblas-dev
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
RUN pip3 install numpy scipy pandas matplotlib openpyxl
wget https://www.cog-genomics.org/static/bin/plink${PLINKVER}/plink_linux_x86_64.zip &&
    unzip plink_linux_x86_64.zip -d /usr/local/bin && \
    rm plink_linux_x86_64.zip && \
    chmod a+x /usr/local/bin/plink

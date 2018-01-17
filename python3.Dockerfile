FROM alpine:3.7
RUN apk --no-cache --update-cache add gcc gfortran python3 python3-dev py3-pip build-base wget freetype-dev libpng-dev openblas-dev
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
RUN pip3 install numpy scipy pandas matplotlib openpyxl
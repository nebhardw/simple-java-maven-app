FROM nginx:latest as builder
ARG TEST_STRING="Hello World"
RUN echo "Checking it now" \
    echo ${TEST_STRING}

FROM scratch

COPY --from=builder / /

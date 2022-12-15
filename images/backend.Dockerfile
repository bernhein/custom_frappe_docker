# syntax=docker/dockerfile:1.3

ARG ERPNEXT_VERSION
FROM frappe/erpnext-worker:${ERPNEXT_VERSION}

COPY repos ../apps

USER root

RUN install-app hrms && \
    install-app erpnext_germany && \
    install-app erpnext_datev && \
    install-app castlecraft && \
    install-app microsoft_integration

USER frappe

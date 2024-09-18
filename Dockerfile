FROM outofreality/odoo-erp:latest

USER 0
RUN mkdir -p /var/lib/odoo/sessions && chown -R odoo:odoo /var/lib/odoo/sessions

COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh


RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir face_recognition

ENTRYPOINT ["/bin/sh"]

CMD ["/app/entrypoint.sh"]

apache2:
  pkg:
    - installed
    - pkgs:
      - apache2
/var/www/html/index.html:
  file.managed:
    - source: salt://index.html

apache_service:
  service.running:
    - name: apache2
    - enable: True

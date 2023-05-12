FROM dtcenter/metplus-envs:metplus-action-build-documentation

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

#FROM bitwalker/alpine-elixir:latest
FROM bitwalker/alpine-elixir:1.5

# Set exposed ports
EXPOSE 5000
ENV PORT=5000

ENV MIX_ENV=prod

COPY cluster.ex ./

USER default

#CMD ./bin/yourapp foreground
#CMD iex
CMD tail -f /dev/null

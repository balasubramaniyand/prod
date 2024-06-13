version: '3.8'

services:
  opexwise_db:
    image: postgres:12
    networks:
      - iopex_network
    restart: on-failure:5
    ports:
      - "9000:5432"
    volumes:
      - "./db_data/data:/var/lib/postgresql/data"
    environment:
      POSTGRES_DB: opexwise_api
      POSTGRES_PASSWORD: iopex123

networks:
  iopex_network:
    driver: bridge

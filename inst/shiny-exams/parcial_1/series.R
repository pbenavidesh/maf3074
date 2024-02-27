library(tidyverse)
library(fpp3)

stocks <- tidyquant::tq_get(
  x = c("DOGE-USD", "RIVN"),
  from = today() - 365,
  to = today() - 1
) |>
  select(symbol, adjusted)

stocks <- stocks |>
  group_by(symbol) |>
  mutate(
    t = seq_len(n())
  ) |>
  ungroup() |>
  as_tsibble(index = t, key = symbol) |>
  relocate(symbol, t)


mex_series <- tidyquant::tq_get(
  x = c("MEXSLRTTO01IXOBM", "MEXPRCNTO01IXOBM"),
  get = "economic.data",
  from = "1986-01-01",
  to = "2023-03-01"
) |>
  mutate(
    date = yearmonth(date)
  ) |>
  as_tsibble(index = date, key = symbol)




series <- list(
  doge = stocks |>
    filter(symbol == "DOGE-USD"),
  rivian = stocks |>
    filter(symbol == "RIVN"),
  hare = pelt |>
    select(-Lynx),
  takeaway = aus_retail |>
    filter(Industry == "Takeaway food services", State == "Queensland"),
  liquor = aus_retail |>
    filter(Industry == "Liquor retailing",
           State == "Western Australia"),
  mex_retail = mex_series |>
    filter(symbol == "MEXSLRTTO01IXOBM"),
  mex_construction = mex_series |>
    filter(symbol == "MEXPRCNTO01IXOBM")
)

rm(list = c("stocks", "mex_series"))

series_exp <- c("el precio ajustado del DOGECOIN (en USD).",
                "el precio de la acción de Rivian Automotive.",
                "la cantidad de pieles de liebre comercializadas por la empresa
                Hudson Bay Company.",
                "las ventas de la industria de comida para llevar en el estado
                de Queensland, Australia.",
                "las ventas de vinos y licores en el estado de Australia occidental.",
                "las ventas de retail (minoristas) en México.",
                "la producción de la construcción en México.")

series_code <- list(
  doge = quote(
    tidyquant::tq_get(
      x = "DOGE-USD",
      from = today() - 365,
      to = today() - 1
    ) |>
      select(symbol, adjusted) |>
      mutate(
        t = seq_len(n())
      ) |>
      as_tsibble(index = t, key = symbol) |>
      relocate(symbol, t)
  ),
  rivian = quote(
    tidyquant::tq_get(
      x = "RIVN",
      from = today() - 365,
      to = today() - 1
    ) |>
      select(symbol, adjusted)  |>
      mutate(
        t = seq_len(n())
      ) |>
      as_tsibble(index = t, key = symbol) |>
      relocate(symbol, t)
  ),
  hare = quote(
    pelt |>
      select(-Lynx)
  ),
  takeaway = quote(
    aus_retail |>
      filter(Industry == "Takeaway food services", State == "Queensland")
  ),
  liquour = quote(
    aus_retail |>
      filter(Industry == "Liquor retailing",
             State == "Western Australia")
  ),
  mex_retail = quote(
    tidyquant::tq_get(
      x = "MEXSLRTTO01IXOBM",
      get = "economic.data",
      from = "1986-01-01",
      to = "2023-03-01"
    ) |>
      mutate(
        date = yearmonth(date)
      ) |>
      as_tsibble(index = date, key = symbol)
  ),
  mex_construction = quote(
    tidyquant::tq_get(
      x = "MEXPRCNTO01IXOBM",
      get = "economic.data",
      from = "1986-01-01",
      to = "2023-03-01"
    ) |>
      mutate(
        date = yearmonth(date)
      ) |>
      as_tsibble(index = date, key = symbol)
  )
  )

package dev.rafaelps.gestoq.Dto;

import java.math.BigDecimal;

public class Produtorequest {

    public record ProdutoRequest(
            String nome,
            String descricao,
            String codigo,
            BigDecimal preco,
            Integer estoqueAtual,
            Integer estoqueMinimo
    ) {
    }
}

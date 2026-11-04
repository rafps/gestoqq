package dev.rafaelps.gestoq.domain;

import dev.rafaelps.gestoq.domain.enums.tipomovimentacao;
import dev.rafaelps.gestoq.domain.enums.tipomovimentacao;
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "movimentacoes_estoque")
public class movimentacaoestoque {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    private tipomovimentacao tipo;

    private Integer quantidade;

    @Column(name = "data_movimentacao")
    private LocalDateTime dataMovimentacao;

    private String observacao;

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    public LocalDateTime getDataMovimentacao() {
        return dataMovimentacao;
    }

    public void setDataMovimentacao(LocalDateTime dataMovimentacao) {
        this.dataMovimentacao = dataMovimentacao;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public tipomovimentacao getTipo() {
        return tipo;
    }

    public void setTipo(tipomovimentacao tipo) {
        this.tipo = tipo;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
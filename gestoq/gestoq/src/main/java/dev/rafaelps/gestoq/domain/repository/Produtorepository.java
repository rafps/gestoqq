package dev.rafaelps.gestoq.domain.repository;

import dev.rafaelps.gestoq.domain.Produto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Produtorepository extends JpaRepository<Produto, Long> {
}
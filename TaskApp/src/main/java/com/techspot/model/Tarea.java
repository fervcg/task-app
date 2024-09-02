package com.techspot.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

/**
 * Entidad que representa una tarea en el sistema.
 * Se utiliza para mapear la tabla de tareas en la base de datos.
 */
@Entity
public class Tarea {

    // Identificador único de la tarea, generado automáticamente por la base de datos
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Descripción de la tarea
    private String descripcion;

    // Indica si la tarea está completada (true) o no (false)
    private boolean completada;

    // Estado actual de la tarea, como 'pendiente' o 'en progreso'
    private String estado;

    // Métodos Getter y Setter para acceder y modificar los atributos

    /**
     * Obtiene el ID de la tarea.
     * @return El ID de la tarea.
     */
    public Long getId() {
        return id;
    }

    /**
     * Establece el ID de la tarea.
     * @param id El ID de la tarea.
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * Obtiene la descripción de la tarea.
     * @return La descripción de la tarea.
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * Establece la descripción de la tarea.
     * @param descripcion La descripción de la tarea.
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * Verifica si la tarea está completada.
     * @return true si la tarea está completada, false en caso contrario.
     */
    public boolean isCompletada() {
        return completada;
    }

    /**
     * Establece si la tarea está completada.
     * @param completada true si la tarea está completada, false en caso contrario.
     */
    public void setCompletada(boolean completada) {
        this.completada = completada;
    }

    /**
     * Obtiene el estado de la tarea.
     * @return El estado de la tarea.
     */
    public String getEstado() {
        return estado;
    }

    /**
     * Establece el estado de la tarea.
     * @param estado El estado de la tarea.
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }
}

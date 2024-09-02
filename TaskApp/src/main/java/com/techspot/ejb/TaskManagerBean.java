package com.techspot.ejb;

import javax.ejb.Stateless;

@Stateless
public class TaskManagerBean {

    public void createTask(String taskName, String description) {
        // Lógica para crear una tarea en la base de datos
        System.out.println("Task created: " + taskName);
    }

    public void updateTask(int taskId, String taskName, String description) {
        // Lógica para actualizar una tarea en la base de datos
        System.out.println("Task updated: " + taskName);
    }

    public void deleteTask(int taskId) {
        // Lógica para eliminar una tarea en la base de datos
        System.out.println("Task deleted with ID: " + taskId);
    }
}
